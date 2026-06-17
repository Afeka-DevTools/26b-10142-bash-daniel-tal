#!/bin/bash

read -p "Enter an IP address to scan (e.g., 127.0.0.1): " target_ip

if [ -z "$target_ip" ]; then
    echo "No IP address entered. Exiting."
    exit 1
fi

echo "Starting port scan (1-1000) for IP: $target_ip..."
echo "Scanning 50 ports at a time."
echo "--------------------------------------"

scan_port() {
    local port=$1
    if timeout 0.5 bash -c "</dev/tcp/$target_ip/$port" 2>/dev/null; then
        echo "✅ Port $port is OPEN"
    fi
}

for port in {1..1000}; do
    scan_port $port &
    
    if (( port % 50 == 0 )); then
        wait
    fi
done

wait

echo "--------------------------------------"
echo "Scan complete!"