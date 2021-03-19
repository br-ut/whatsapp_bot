FROM fusuf/whatsasena:latest

RUN git clone https://github.com/br-ut/whatsapp_bot /root/whatsapp_bot
WORKDIR /root/whatsapp_bot/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
