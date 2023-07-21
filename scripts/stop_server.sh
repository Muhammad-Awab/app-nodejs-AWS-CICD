#!/bin/bash

# Assuming your Node.js server is running on a specific port (e.g., 3000)
# You can customize the port number and the command based on your application

echo "Stopping Node.js server..."

# Find the process ID (PID) of the running Node.js server
PID=$(lsof -t -i :3000)

# If the PID exists, terminate the process
if [ -n "$PID" ]; then
  echo "Stopping process with PID: $PID"
  kill $PID
else
  echo "Node.js server is not running."
fi

echo "Node.js server stopped successfully."
