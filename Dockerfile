FROM websphere-liberty:full-java17-openj9
# Default setting for the verbose option. Set it to true to debug the application container image build failures
ARG VERBOSE=true
# Add Liberty server configuration including all necessary features
COPY --chown=1001:0  server.xml /config/
RUN features.sh
RUN configure.sh