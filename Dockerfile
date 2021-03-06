FROM  mhart/alpine-node
RUN mkdir /app
COPY package.json /app
WORKDIR /app
RUN npm install
COPY . /app
EXPOSE 3000
CMD ["npm", "start"]
