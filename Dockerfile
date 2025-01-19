# Use the Open Liberty base image
FROM openliberty/open-liberty:full-java11-openj9-ubi

# Copy the server configuration
COPY server.xml /config/

# Copy the WAR file to the Open Liberty deployment directory
COPY io.openliberty.sample.getting.started.war /config/apps/

EXPOSE 9080 9443
