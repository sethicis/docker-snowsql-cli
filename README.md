# docker-snowsql-cli
Simple docker image that just contains the snowsql-cli and dependencies required to run it

# Usage

`docker run --rm ghcr.io/sethicis/snowsql-cli:latest snowsql --help`

When run without a command override the docker image will report the snowsql version and exit

## Examples

Use a private key to login to a specific user
`docker run --rm -v /path/to/private-key.pem:/tmp/private-key.pem ghcr.io/sethicis/snowsql-cli:latest snowsql -a foo -u bar --private-key-path /tmp/private-key.pem -o log_level=DEBUG`
