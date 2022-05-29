FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir Hiro-Music-Bot \
    && cd Hiro-Music-Bot \
    && git clone https://github.com/UserbotMaps/Hiro-Music-Bot
WORKDIR /Hiro-Music-Bot/Hiro-Music-Bot
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m Music
