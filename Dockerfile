FROM dockerfile/java:oracle-java8
MAINTAINER docker@hightml.com



ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q -y install software-properties-common

RUN apt-get update




RUN apt-get -q -y install libleptonica-dev
RUN apt-get -q -y install libtesseract3 libtesseract-dev

RUN apt-get -q -y install tesseract-ocr
RUN apt-get -q -y install tesseract-ocr-eng tesseract-ocr-fra tesseract-ocr-nld




RUN ln -s /usr/share/tesseract-ocr/tessdata /data/tessdata


RUN java -version
RUN tesseract --version



CMD ["bash"]

