FROM rockylinux:9

RUN yum install -y https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.3/linux_x86_64/snowflake-snowsql-1.4.0-1.x86_64.rpm
RUN useradd -ms /bin/bash abc
USER abc

ENTRYPOINT ['snowsql', '-v']