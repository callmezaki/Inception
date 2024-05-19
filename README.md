# Inception

## Description

Inception is a project that automates the creation and management of multiple Docker containers using Makefiles and Shell scripts. The project aims to provide a streamlined and efficient way to set up and manage a containerized environment.

## Features

- Automated Docker container creation
- Customizable Makefile for container management
- Shell scripts for setup and configuration
- Support for multiple services

## Services

- **Nginx**: Web server to handle HTTP requests.
- **WordPress**: Content management system for building websites.
- **MariaDB**: Database server to store data for WordPress.
- **Redis**: In-memory data structure store, used as a database, cache, and message broker.
- **Adminer**: Database management tool for managing the MariaDB database.
- **FTPS**: Secure file transfer protocol server.
- **Grafana**: Analytics and monitoring platform.
- **Prometheus**: Monitoring and alerting toolkit.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Make](https://www.gnu.org/software/make/)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/callmezaki/Inception.git
   cd Inception
   ```

2. Build and start the containers:

   ```bash
   make build
   make up
   ```

### Usage

- To view running containers:

  ```bash
  make ps
  ```

- To stop the containers:

  ```bash
  make down
  ```

## Project Structure

- `srcs/`: Contains the source files and configuration scripts.
- `Makefile`: Defines the build and management commands for Docker containers.
- `README.md`: Project documentation.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Docker](https://www.docker.com/)
- [GNU Make](https://www.gnu.org/software/make/)
