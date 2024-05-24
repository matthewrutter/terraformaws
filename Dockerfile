# Use the Alpine image from the .env file
ARG ALPINE_IMAGE
FROM ${ALPINE_IMAGE}

# Set the Terraform version to be installed
ARG TERRAFORM_VERSION
ENV TERRAFORM_VERSION=${TERRAFORM_VERSION}

# Install dependencies
RUN apk add --no-cache \
    wget \
    unzip \
    ca-certificates \
    bash \
    && update-ca-certificates

# Download Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify the Terraform binary
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move the Terraform binary to /usr/local/bin so it's available in the PATH
RUN mv terraform /usr/local/bin/

# Cleanup
RUN rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify installation
RUN terraform --version

# Copy the file that will setup server configuration and the Terraform configuration file
COPY ./run.sh /run.sh
COPY ./terraform /terraform

# Set entrypoint to bash
ENTRYPOINT ["/bin/bash"]
