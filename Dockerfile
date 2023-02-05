FROM alpine
RUN apk add --update bash openssh sshpass
COPY autobandit.sh autobandit.sh
ADD level /level
CMD ["./autobandit.sh"]