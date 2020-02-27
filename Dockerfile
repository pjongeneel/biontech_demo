FROM broadinstitute/picard:latest

RUN apt-get update -y && \
    apt-get install -y \
    bwa \
    git \
    samtools

ADD your_script.R /path/in/container/your_script.R

ENTRYPOINT [ "/bin/bash" ]
