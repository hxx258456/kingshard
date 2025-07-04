# Use the latest openEuler base image
FROM leechm/kylin:v10-20220505-loongarch64

# Copy the kingshard binary to /usr/local/bin
COPY ./bin/kingshard /usr/local/bin/kingshard

# Ensure the kingshard binary has executable permissions
RUN chmod +x /usr/local/bin/kingshard

# Copy the kingshard configuration file
COPY ./etc/ks.yaml /etc/kingshard/ks.yaml

# Expose the necessary ports (verify these match kingshard's requirements)
EXPOSE 9696 9797 7080

# Set the working directory (optional, for clarity)
WORKDIR /usr/local/bin

# Run kingshard with the configuration file
CMD ["kingshard", "--config=/etc/kingshard/ks.yaml"]