FROM sonatype/nexus3

USER root
RUN chown -R daemon:0 /opt/sonatype /nexus-data && chmod -R g+rwx /opt/sonatype /nexus-data