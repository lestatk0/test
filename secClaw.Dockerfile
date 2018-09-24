FROM ubuntu:16.04

COPY ./files/uid_entrypoint.sh /uid_entrypoint.sh

RUN apt-get update && apt-get install -y curl vim mc git ntp sudo masscan
RUN echo 'default ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN chmod -R g=u /etc/passwd && chmod 0777 /uid_entrypoint.sh

#added
ENTRYPOINT ["/uid_entrypoint.sh"]