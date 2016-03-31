FROM debian:jessie
RUN apt-get update &&\
    apt-get install bittornado -y &&\
    mkdir ~/.bttrack
ENTRYPOINT ["bttrack", "--port", "6969", "--dfile", "~/.bttrack/dstate", "--nat_check", "0", "--scrape_allowed", "full"]
EXPOSE 6969
