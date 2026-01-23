#!/bin/bash

INTERNAL="eDP-1"  # ← CHANGE THIS to your laptop monitor name (run `hyprctl monitors` to confirm)

# Function to handle the current state on startup
handle_current() {
    # If any external monitor is active, disable the internal one
    if hyprctl monitors | grep "^Monitor" | grep -v "$INTERNAL" | grep -q .; then
        hyprctl keyword monitor "$INTERNAL,disable"
    fi

    # Safety net: if no monitors are active at all (unlikely but possible), re-enable internal
    if ! hyprctl monitors | grep -q "^Monitor"; then
        hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
    fi
}

# Initial handling on script start
handle_current

# Listen for hotplug events on socket2
socat - UNIX-CONNECT:/tmp/hypr/$HYPR_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
    if [[ $line == monitoradded>>* ]]; then
        # Extract monitor name after >>
        added_monitor="${line#monitoradded>>}"

        # If an external monitor was added, disable laptop screen
        if [[ "$added_monitor" != "$INTERNAL" ]]; then
            hyprctl keyword monitor "$INTERNAL,disable"
        fi

    elif [[ $line == monitorremoved>>* ]]; then
        # Extract monitor name after >>
        removed_monitor="${line#monitorremoved>>}"

        # If an external monitor was removed, check if any are still active
        if [[ "$removed_monitor" != "$INTERNAL" ]]; then
            # Small delay to ensure Hyprland has updated its state
            sleep 0.2

            if ! hyprctl monitors | grep -q "^Monitor"; then
                # No active monitors left → re-enable laptop screen
                hyprctl keyword monitor "$INTERNAL,preferred,auto,1"
            fi
        fi
    fi
done