FROM aquabotwa/sanuwa-official:md-beta

RUN git clone https://github.com/DarkUnited/QueenBella /root/queenbella
WORKDIR /root/queenbella/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


