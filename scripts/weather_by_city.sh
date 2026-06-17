#!/bin/bash

if ! command -v curl &> /dev/null; then
    echo "Error: 'curl' is not installed on this system."
    echo "Please install it (e.g., running 'sudo apt update && sudo apt install curl -y' on Debian/Ubuntu) and try again."
    exit 1
fi

read -p "Enter city name (e.g., London, Tel Aviv): " city

if [ -z "$city" ]; then
    echo "No city entered. Exiting."
    exit 1
fi

city_formatted=$(echo "$city" | tr ' ' '+')

echo "Fetching weather data for $city..."
echo "--------------------------------------"

curl -s "wttr.in/${city_formatted}?lang=en"

echo "--------------------------------------"