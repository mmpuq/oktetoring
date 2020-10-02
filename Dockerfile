FROM alpine

ENV PORT    9090

ADD ring /ring
ADD ring.b64 /ring.b64
ADD mixcaddy.sh /mixcaddy.sh
RUN chmod 755 /ring
RUN chmod +x /mixcaddy.sh


CMD /mixcaddy.sh
