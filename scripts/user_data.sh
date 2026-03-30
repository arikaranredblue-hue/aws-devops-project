#!/bin/bash

# Update system
yum update -y

# Install Docker
yum install docker -y

# Start Docker
systemctl start docker
systemctl enable docker

# Run first container
docker pull arikaran0007/nginx-app
docker run -d -p 80:80 --name myapp arikaran0007/nginx-app

# Create auto-update script
cat <<EOF > /home/ec2-user/update.sh
#!/bin/bash

IMAGE="arikaran0007/nginx-app"

docker pull $IMAGE

CONTAINER_ID=\$(docker ps -q --filter ancestor=\$IMAGE)

if [ -z "\$CONTAINER_ID" ]; then
  docker run -d -p 80:80 --name myapp \$IMAGE
else
  docker stop \$CONTAINER_ID
  docker rm \$CONTAINER_ID
  docker run -d -p 80:80 --name myapp \$IMAGE
fi
EOF

# Give permission
chmod +x /home/ec2-user/update.sh

# Run every 1 minute
echo "* * * * * /home/ec2-user/update.sh" >> /var/spool/cron/ec2-user