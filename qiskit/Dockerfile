# Use the base Ubuntu image
FROM ubuntu:20.04

# Update the system and install Python, pip, and other necessary dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    bash \
    coreutils \
    poppler-utils \
    && apt-get clean

# Install Qiskit
RUN pip3 install qiskit qiskit-ibm-runtime pylatexenc

# Install libraries
RUN pip3 install matplotlib 

# Set the working directory
WORKDIR /usr/src/app

# Customize the prompt and enable colors for `ls`
RUN echo "PS1='\\[\\e[32m\\]qiskit-container \\[\\e[34m\\]\\w\\[\\e[0m\\]# '" >> /root/.bashrc \
    && echo "alias ls='ls --color=auto'" >> /root/.bashrc

# Default command when the container is run
CMD [ "bash" ]
