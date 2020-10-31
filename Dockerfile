FROM jenkins/jenkins:lts
USER root
ENV DOCKERVERSION=19.03.13
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz
USER jenkins
RUN java -jar /usr/lib/jenkins-plugin-manager.jar --verbose --plugins docker-plugin:1.2.1 docker-workflow:1.24