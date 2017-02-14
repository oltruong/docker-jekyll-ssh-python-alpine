FROM ruby:2.4.0-alpine

LABEL maintainer oltruong<contact@oltruong.com>

ENV JEKYLL_VERSION  3.4.0
ENV MINIMA_VERSION  2.1.0
ENV ASCIIDOCTOR_VERSION 1.5.5
ENV ASCIIDOCTOR_PDF_VERSION 1.5.0.alpha.14

RUN apk add --update bash build-base libffi-dev openssh rsync python py-pip
RUN gem install bundler
RUN gem install jekyll -v $JEKYLL_VERSION
RUN gem install minima -v $MINIMA_VERSION
RUN gem install asciidoctor -v $ASCIIDOCTOR_VERSION
RUN gem install asciidoctor-pdf -v $ASCIIDOCTOR_PDF_VERSION
RUN pip install --upgrade pip
RUN pip install xlrd