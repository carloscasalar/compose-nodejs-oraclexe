FROM collinestes/docker-node-oracle:0.12

RUN echo Node version
RUN node -v
RUN cat /proc/version

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
