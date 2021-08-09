FROM ubuntu:18.04

RUN apt update 
    
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
