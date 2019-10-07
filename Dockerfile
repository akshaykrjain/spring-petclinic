FROM openjdk:8-jre-alpine
ADD https://github.com/segmentio/chamber/releases/download/v2.1.0/chamber-v2.1.0-linux-amd64 /bin/chamber
RUN chmod +x /bin/chamber

ADD $DEPLOYABLE_PATH /home/$DEPLOYABLE.jar

CMD  ["java","-jar","/home/pet.jar"]
