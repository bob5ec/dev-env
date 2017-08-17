FROM chef/chefdk:2.0.28
RUN apt-get update && \
    apt-get install -y build-essential docker.io vagrant && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN chef gem install bundler test-kitchen serverspec kitchen-ansible kitchen-docker kitchen-inspec

#WORKDIR /home
ADD startup /bin/startup
CMD ["/bin/startup"]
