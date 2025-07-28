FROM node:20

RUN apt-get update && apt-get install -y git-lfs
RUN git lfs install

WORKDIR /usr/app

COPY . .

# Docker 빌드 중에 Git LFS 파일을 내려받게 하기
RUN git lfs pull

RUN npm install -g http-server

EXPOSE 7860

CMD ["http-server", ".", "-a", "0.0.0.0", "-p", "7860"]
