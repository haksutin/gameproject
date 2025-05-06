#!/bin/bash
echo
echo "=== HIGH SCORES ==="
echo

ls /home/vagrant/game-logs/*.log 2>/dev/null | while read file; do
  echo "--- $(basename "$file" .log) ---"
  column -t < "$file"
  echo
done
