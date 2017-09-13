FROM samueldebruyn/debian-git
MAINTAINER Everton Muniz <munizeverton@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install wget && apt-get -y install php7.0

# install composer
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet
RUN echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bash_profile
RUN source ~/.bash_profile

WORKDIR /root/work/
