# Use Rocky Linux 9 as the base image
FROM rockylinux:8

# Install necessary packages
RUN dnf install -y \
    sudo \
    vim \
    openssh-server \
    net-tools \
    wget \
    firewalld

# Set a weak root password (misconfiguration)
RUN echo 'root:root' | chpasswd

# Create a new user with passwordless sudo privileges (misconfiguration)
RUN useradd -m insecureuser && \
    echo 'insecureuser ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set insecure file permissions on sensitive files (misconfiguration)
RUN chmod 777 /etc/passwd /etc/shadow

# Generate SSH host keys
RUN ssh-keygen -A

# Configure SSH to allow root login and use weak authentication methods (misconfiguration)
RUN sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]
