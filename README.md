# Better-Caffeine
Better Caffeine Setup Script
This script sets up a systemd service to keep your Debian machine awake, just like the Caffeine app, but with a few extra perks. It prevents your system from going to sleep, locking, or blanking the screen. It also creates convenient aliases for easy management.

Features
Creates a systemd service to prevent your machine from sleeping or locking.

Sets up two aliases:

cafon – Starts and enables the stay-awake service.

cafoff – Stops and disables the stay-awake service.

Ensures the service persists across reboots by enabling user lingering.

Adds the aliases to your .bashrc for easy access in any terminal session.

Runs everything in one script for simple installation and setup.

Prerequisites
Debian or any system using systemd.

Basic terminal knowledge.

Make the script executable:

chmod +x ~/setup-better-caffeine.sh
Run the script:

~/setup-better-caffeine.sh

Usage
To keep your system awake:

Run:

cafon
To stop the stay-awake service:

Run:

cafoff
Notes:
The cafon alias will start and enable the stay-awake service. Your system will stay awake across reboots.

The cafoff alias will stop and disable the service, allowing your system to sleep and lock as usual.
