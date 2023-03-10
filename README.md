[![CircleCI](https://dl.circleci.com/status-badge/img/gh/longpb91/udacity_aws_devops_pj4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/longpb91/udacity_aws_devops_pj4/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

1. Setup and Configure Docker locally:
* A guide to install docker locally: https://docs.docker.com/engine/install/ubuntu/
* To build an image for this project and run the container: `./run_docker.sh`
* After running the container, in another terminal tab, the prediction is made by running: `./make_prediction.sh`
* Use Command + C to stop the container.

2. Setup and Configure Kubernetes locally:
* A guilde to install Kubernetes: https://kubernetes.io/docs/tasks/tools/#install-kubectl-on-linux
* A guilde to install minikube: https://minikube.sigs.k8s.io/docs/start/

3. Create Flask app in Container
* Build image and add a descriptive tag: `docker build -t <name of the image>: <tag> .`
* Upload to docker hub: `./upload_docker.sh`

4. Run via kubectl
* Run the kubernetes: `./run_kubernetes.sh`
* In another terminal tab, the prediction is made by running: `./make_prediction.sh`
* To stop the cluster: `minikube stop`
* To delete the cluster: `minikube delete`
