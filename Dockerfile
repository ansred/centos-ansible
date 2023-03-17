FROM centos:7

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install ansible && \
    yum -y clean all

CMD ["/usr/sbin/init"]

# docker build -t ansred/centos-ansible . --no-cache=true --platform=linux/amd64 && docker push ansred/centos-ansible



# docker run -d --name centos7-ansible --restart unless-stopped ansred/centos-ansible

# docker volume create centos-ansible
# docker run -d --name centos-ansible -v centos-ansible:/data ansred/centos-ansible
