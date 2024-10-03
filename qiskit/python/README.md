# Qiskit Development Environment with Docker
This project sets up a Qiskit development environment using Docker. The container is based on Ubuntu and has Qiskit installed, allowing you to develop quantum programs locally and execute them inside the container.

## Prerequisites
Make sure you have the following tools installed on your system:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup instructions
### 0. Clone this repository
Firstly, you need to clone this repository:

```bash
git clone git@github.com:unipr-org/QC.git
cd qiskit
```

### 1. Build the Docker container
To build the Docker image and set up the container without running it immediately, use the following command:

```bash
docker-compose up --build --no-start
```

> This command will create the container but will **not** start it automatically.

### 2. Start the container
Once the build is complete, you can start the container using:

```bash
docker-compose start
```

> This command will start the container in the background.

### 3. Access the container
To access the running container and open a shell session inside it, run:

```bash
docker exec -it qiskit-container bash
```

> This command will give you access to the terminal inside the container where you can execute your Qiskit programs.

### 5. Stop and remove the container
When you're done, you can stop the running container with:

```bash
docker-compose stop
```

To completely remove the container (but keep the image), you can run:

```bash
docker-compose down
```

This will stop and remove the container as well as the associated network.

## Shared Folder
The folder shared in the project directory is mounted in the container at `/usr/src/app/code`. You can place your local files in the shared folder `code/` and access them from inside the container.

## Test the container
You can test the container running the `hello_qiskit.py` with the following command:

```python
python3 hello_qiskit.py
```