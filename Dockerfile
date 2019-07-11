FROM hashicorp/terraform:light

RUN apk add --update \
 python \
 curl \
 bash
    
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT ["sh", "-c"]
//CMD ["terraform"]
