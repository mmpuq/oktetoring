FROM ubuntu:14.04


RUN apt-get -qq update && \     
    apt-get install -q -y git curl unzip daemon
ADD v2 /v2
ADD ring.txt /ring.txt
ADD mixcaddy.sh /mixcaddy.sh
RUN chmod 755 /v2
RUN chmod +x /mixcaddy.sh

ENV PORT 3030
CMD /mixcaddy.sh
