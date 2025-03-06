# PySpark Docker Setup

This repository provides a simple setup to run a Jupyter Notebook with PySpark using Docker.

## Prerequisites
Make sure you have Docker installed on your system.

## Getting Started

### Run with Docker
Execute the following command to start a PySpark Jupyter Notebook container:
```sh
$ docker run -d -p 8888:8888 --name pyspark jupyter/pyspark-notebook
```

### Run with Docker Compose
For an easier setup, use Docker Compose:
```sh
$ docker-compose up -d
```

To stop and remove the container:
```sh
$ docker-compose down
```

## Accessing the Jupyter Notebook
Once the container is running, open your browser and go to:
```
http://localhost:8888
```

## Project Structure
```
/
├── Dockerfile         # Docker setup for a custom image (if needed)
├── docker-compose.yml # Docker Compose configuration
├── README.md          # Project documentation
```

## Notes
- The Jupyter Notebook runs without authentication (`NotebookApp.token=''`).
- A volume `./work:/home/jovyan/work` is mounted for persistent storage.

## License
This project is open-source. Feel free to use and modify it as needed.

