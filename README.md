# Craftoria Server - 1.4.0

This repository provides a Docker image for running a Craftoria 1.4.0 server.

## Getting Started

To use this Docker image, follow the instructions below:

### Prerequisites

- Install Docker on your machine. Refer to [Docker's installation guide](https://docs.docker.com/get-docker/).
  
### Usage

1. **Pull the Docker image from the registry:**
   ```bash
   docker pull ghcr.io/pxlcoarl/craftoriadocker:latest
   ```
2. **Run the Docker container:**   
   Make sure to edit the placeholder values!
   ```bash
   docker run --name containername \
   -d \
   -p 25565:25565 \
   -v volumename:/data \
   -e MAX_RAM=6G \
   -e MIN_RAM=4G \
   ghcr.io/pxlcoarl/craftoriadocker:latest
   ```
3. **The server will automatically start, and the EULA is accepted by default.**

## Configuration

You can change the maximum and minimum RAM values by modifying the environment variables `MAX_RAM` and `MIN_RAM`.    
All server files are copied to the `/data` directory inside the container.  
You can modify the server settings and configurations within this directory.

## Additional Information

The entry point for the server is set to `/bin/bash ./startserver.sh`.  
Make sure to mount any volumes you need for persistent data storage when running the container.   
Refer to [Docker's volume guide](https://docs.docker.com/engine/storage/volumes/#create-and-manage-volumes).