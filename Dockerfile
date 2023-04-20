ARG TRIVY_VERSION=0.40.0

FROM aquasec/trivy:$TRIVY_VERSION

RUN trivy plugin install github.com/afdesk/scan2html

ENTRYPOINT ["trivy", "scan2html"]