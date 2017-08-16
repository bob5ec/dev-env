FROM chef/chefdk
RUN apt-get update && \
    apt-get install -y docker && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /home/src
ADD startup /bin/startup
CMD ["/bin/startup"]
