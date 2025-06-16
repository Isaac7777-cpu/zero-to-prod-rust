# Should use the latest stabel release as base image. (Not sure why we are not using the latest flag)
FROM rust:1.87.0

# Let's switch our working directory to `app` (equivalent to `cd app`)
# The `app` folder will be created for us by Docker in case it does not
# exist already
WORKDIR /app

# Install the required system dependencies for our linking configuration
RUN apt update && apt install lld clang -y
# Copy all files from our working environment to our Docker image
COPY . .
# ENV SQLX_OFFLINE=true
ENV SQLX_OFFLINE=true
# Let's build our binary!
# We'll use the release profile to make it faaast
RUN cargo build --release
# When `docker run` is executed, launch the binary!
ENTRYPOINT [ "./target/release/zero2prod" ]

