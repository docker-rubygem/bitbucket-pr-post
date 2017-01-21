FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install bitbucket-pr-post --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bit_bucket_pr_post"]
CMD ["--help"]
