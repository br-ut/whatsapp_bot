FROM fusuf/whatsasena:latest

RUN git clone https://github.com/br-ut/whatsapp_bot /root/whatsapp_bot
WORKDIR /root/whatsapp_bot/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN npm install instagram-url-direct -g
RUN npm install instagram-save -g
RUN npm install

CMD ["node", "bot.js"]
