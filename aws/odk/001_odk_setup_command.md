
1. Install Docker Engine on Ubuntu.

1.1 Uninstall old versions
        sudo apt-get remove docker docker-engine docker.io containerd runc
1.2 Install using the repository
    1.2.1 Set up the repository
        Update the apt package index and install packages to allow apt to use a repository over HTTPS:
        sudo apt-get update

        sudo apt-get install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release
    1.2.2 Add Docker’s official GPG key:
        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    1.2.3 Use the following command to set up the repository:
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

1.3 Install Docker Engine
    1.3.1 Update the apt package index:
            sudo apt-get update
    1.3.2 Install Docker Engine, containerd, and Docker Compose.
            sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    1.3.3 Verify that the Docker Engine installation is successful by running the hello-world image:
            sudo docker run hello-world



2. Use Docker As Non-Root User
    Every time a non-root user runs the docker command, the user must prefix the command with sudo. To avoid typing sudo docker, add the connected user to the docker group.

    Create the docker group by running the sudo groupadd docker command.

    Add connected user to the docker group by running the sudo usermod -aG docker $USER command. You can replace $USER with your preferred user - sudo usermod -aG docker kagunda.

    Activate the changes to groups by running the newgrp docker command or log out and log back in again if running the command does not work.

    Verify that you can access and download Docker images without sudo by running the docker run hello-world command.

3. Installing Docker compose. Now, if you want to use docker compose. You have to install Docker desktop.
        SKIPPING THIS AND directly Installing docker compose from old command.

        sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        Assign execute permissions to the docker-compose binary:
            sudo chmod +x /usr/local/bin/docker-compose
        Optionally, create a symbolic link to /usr/bin
            sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
        Test the docker-compose installation by running the
            docker-compose --version command

4. Getting and Setting Up Central
        git clone https://github.com/getodk/central
        cd central
        git submodule update -i
        mv .env.template .env
        docker-compose build
        docker-compose up --no-start
        docker-compose up -d
        docker-compose ps




Ref.
1. https://help.dreamhost.com/hc/en-us/articles/115001764232-Connect-to-your-DreamCompute-Instance-with-SSH-keys-in-Windows#:~:text=Open%20PuTTY%20and%20navigate%20to,generated%20and%20then%20click%20Open.
