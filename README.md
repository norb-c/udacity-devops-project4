[![norb-c](https://circleci.com/gh/norb-c/udacity-devops-project4.svg?style=svg)](https://app.circleci.com/pipelines/github/norb-c/udacity-devops-project4)

## Project Overview

This operationalize a Machine Learning Microservice API. It microservice is deploy to kubernetes using docker containers. 

## Project files
- .circleci: holds the CI/CD configuration built with circle ci
- model_data: Holds the the pre-trained machine learning model
- output_txt_files: Holds the output files from the docker and kubernetes
- run_docker.sh: Runs the aop in a docker container
- run_kubernetes.sh: Runs the app the kubernetes cluster
- deploy_docker.sh: Deploys the docker image to docker hub
- make_prediction.sh: Is use to test the machine learning apis


## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl