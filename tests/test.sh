#!/bin/bash

# Test 1: Basic command execution
echo "Test 1: ls command"
echo "Expected: List of directory contents"
echo "Result:"
echo "ls" | ./build/unix-shell

# Test 2: Built-in cd command
echo "Test 2: cd command"
echo "Expected: Change directory to /tmp"
echo "cd /tmp && pwd" | ./build/unix-shell

# Test 3: Invalid command
echo "Test 3: Invalid command"
echo "Expected: Error message for invalid command"
echo "foobar" | ./build/unix-shell

# Test 4: Exit command
echo "Test 4: exit command"
echo "Expected: Shell should terminate"
echo "exit" | ./build/unix-shell
