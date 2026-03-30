#!/bin/bash

log="$HOME/IntuneCompliance_defender.log"
echo "$(date) | Starting Defender compliance discovery" >> "$log"

defender_installed=false
defender_healthy=false

if command -v mdatp >/dev/null 2>&1; then
    defender_installed=true
    echo "$(date) | Defender is installed" >> "$log"

    mdatp_health=$(mdatp health 2>/dev/null)
    defender_healthy_value=$(echo "$mdatp_health" | awk -F': *' '$1=="healthy"{print tolower($2); exit}')

    if [[ "$defender_healthy_value" == "true" ]]; then
        defender_healthy=true
    fi

    echo "$(date) | Defender healthy: $defender_healthy" >> "$log"
else
    echo "$(date) | Defender not installed" >> "$log"
fi

printf '{ "defender_installed": %s, "defender_healthy": %s }\n' "$defender_installed" "$defender_healthy"

echo "$(date) | Ending Defender compliance discovery" >> "$log"