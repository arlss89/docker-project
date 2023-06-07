# website-docker

### Attention

Instructions

To run the docker this commands and the docker file, you must have docker installed.

To install docker follow steps in according to your system: https://docs.docker.com/engine/install/

To deploy this website using Docker and serve the `index.html` file, you can follow these steps:

1. Build the Docker image:
   Open a terminal or command prompt, navigate to the directory containing the Dockerfile and `index.html`, and run the following command to build the Docker image:

   ```bash
   docker build -t website-docker .
   ```

   This command will build the Docker image using the Dockerfile in the current directory. The `-t` flag assigns a tag (name) to the image, and `website-docker` is the tag in this project. The `.` at the end specifies the build context as the current directory.

2. Run the Docker container:
   After the image is built, run the Docker container using the following command:

   ```bash
   docker run -d -p 8080:80 website-docker
   ```

   This command runs the Docker container in detached mode (`-d`), mapping port 8080 of the host to port 80 of the container (`-p 8080:80`). Any available port can choosed on the host to access the website.

3. Access the website:
   Open a web browser and visit `http://localhost:8080` . You will see `index.html` file being served by Nginx.
