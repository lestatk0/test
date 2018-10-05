FROM sonatype/nexus3

USER root
RUN echo "Test"
RUN chown -R daemon:0 /opt/sonatype /nexus-data && chmod -R g+rwx /opt/sonatype /nexus-data
RUN ls -la /nexus-data
RUN ls -la /opt/sonatype