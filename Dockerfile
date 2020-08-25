# Use google cloud sdk
FROM google/cloud-sdk:306.0.0-alpine

# Install Java 8 for Datastore emulator
RUN apk add --update --no-cache openjdk8-jre &&\
    gcloud components install cloud-datastore-emulator beta --quiet

# Volume to persist Datastore data
VOLUME /opt/data

# Volume to hold metadata import files
VOLUME /opt/datastore-metadata

COPY ./shellscripts/start-datastore .

EXPOSE 8081

ENTRYPOINT ["./start-datastore"]

