FROM ubuntu:18.04

RUN apt update 
    
CMD chmod +x /start.sh && /start.sh
