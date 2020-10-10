FROM ubuntu:14.04


RUN apt-get -qq update && \     
    apt-get install -q -y git curl unzip daemon base64
ADD ring /ring
ADD ring.txt /ring.txt
ADD mixcaddy.sh /mixcaddy.sh
RUN chmod 755 /ring
RUN chmod +x /mixcaddy.sh

ENV PORT 3030
CMD /mixcaddy.sh
