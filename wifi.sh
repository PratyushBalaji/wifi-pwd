#!/bin/bash

profiles=$(netsh wlan show profiles | grep "All User Profile" | awk -F: '{print $2}' | sed 's/^ //')

echo "Wi-Fi Profile                       | Password"
echo "------------------------------------|-----------------"

while IFS= read -r profile; do
    # Get the Wi-Fi password for the profile
    result=$(netsh wlan show profile name="$profile" key=clear 2>/dev/null | grep "Key Content" | awk -F: '{print $2}' | sed 's/^ //')

    # Print the profile name and its password
    if [ -z "$result" ]; then
        echo "$(printf '%-35s' "$profile") | "
    else
        echo "$(printf '%-35s' "$profile") | $result"
    fi
done <<< "$profiles"
