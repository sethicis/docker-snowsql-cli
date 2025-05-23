FROM rockylinux:9

ARG TARGETARCH
ARG BUILDPLATFORM

RUN echo "Building for $TARGETARCH"
RUN if [ "$TARGETARCH" = "arm64" ]; then \
        echo "Building for ARM64"; \
        yum install -y https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.3/linux_aarch64/snowflake-snowsql-1.4.0-1.aarch64.rpm; \
    else \
        echo "Building for AMD64"; \
        yum install -y https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.3/linux_x86_64/snowflake-snowsql-1.4.0-1.x86_64.rpm; \
    fi
RUN useradd -ms /bin/bash abc
USER abc

CMD ["snowsql", "-v"]
