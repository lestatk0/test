FROM sonatype/nexus3

USER root
RUN chown -R nexus:0 /opt/sonatype && chmod -R g+rwx /opt/sonatype
RUN chown -R nexus:0 /nexus-data && chmod -R g+rwx /nexus-data
RUN ls -la /nexus-data
RUN ls -la /opt/sonatype