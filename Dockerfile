FROM ubuntu

RUN apt update && apt install -y git nyancat fortune cowsay lolcat sl && apt clean
RUN git clone https://github.com/Nepitwin/LoLTogetha.git

ENV PATH /usr/games:${PATH}
USER nobody

CMD /LoLTogetha/easter.sh
