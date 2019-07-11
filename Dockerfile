FROM hashicorp/terraform:light
    
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT ["sh", "-c"]
CMD ["terraform"]
