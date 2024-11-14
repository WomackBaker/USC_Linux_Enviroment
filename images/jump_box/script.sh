echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
service ssh start

for (( ; ; ))
do
   sleep 1
done