# docker build -t repo .
# docker run --rm -it repo --version

FROM python:bullseye
ENV REPO_URL https://mirrors.tuna.tsinghua.edu.cn/git/git-repo
ADD "$REPO_URL" /usr/local/bin/repo
RUN chmod +x /usr/local/bin/repo
WORKDIR /work
ENTRYPOINT ["repo"]
