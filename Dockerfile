FROM caltha/protractor

RUN apt-get update && apt-get install -y x11vnc
RUN mkdir ~/.vnc
# Setup a password
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
ADD vnc.conf /etc/supervisor/conf.d/
