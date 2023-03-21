# Run Label Studio with Docker on M1, M2 silicon

Run Docker container for [Label Studio](https://github.com/heartexlabs/label-studio) on Mac with Apple silicon (M1, M2)

- Backgroung: I was not able to run the pre-build `heartexlabs/label-studio:latest` docker image for my Mac with M2 silicon so I set up this docker orchestration to do it. The underling issue was the 

- Note: In this project I am running the label studio as in virtual environment and not compiling from source on a new image. IDK if it makes a difference, but probably the latter is the proper way to set up an MPS capable image.

# Customization
1. Inside `Docker-build.yml` change `author` to your name

# Set up
1.  Docker 
  - Install [Docker Client](https://docs.docker.com/get-started/overview/) 
  - Have `docker` and `docker-compose` installed (You can check this by doing `docker -v` and `docker-compose -v`)
  
2. Build Custom Image  
    > `docker-compose -f Docker-build.yml build`

3. Run Image    
    > `docker-compose -f Docker-compose.yml -p label-studio up -d`

# Access Label Studio
1. Make sure the container is running 

2. Go to http://127.0.0.1:8080 or http://0.0.0.0:8080/


# Other Notes: 
- Data is saved under `/mywork` directory.
- Save Data files under `/mywork` directory which is mounted and accessible in the docker instance
