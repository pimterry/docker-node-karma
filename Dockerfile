FROM node

RUN apt-get update && \
    apt-get install -y xvfb chromium

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome && \
    ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

ENV CHROME_BIN /usr/bin/google-chrome