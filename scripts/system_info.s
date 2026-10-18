
#!/usr/bin/env bash

# Display basic Linux system information

echo "===== Linux System Information ====="

echo "Hostname:"
hostname

echo ""
echo "Current User:"
whoami

echo ""
echo "Current Date and Time:"
date

echo ""
echo "Operating System:"
if [ -f /etc/os-release ]; then
    grep '^PRETTY_NAME=' /etc/os-release
else
    echo "OS information not available"
fi

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "===== Script Completed ====="
