FROM        node
WORKDIR     /app
COPY        server.js /
COPY        package.json /
RUN         npm install
CMD         node /server.js
EXPOSE      7000