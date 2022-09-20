FROM linuxserver/libreoffice:latest

ENV LANG=C.UTF-8

# timezone
ENV TZ Asia/Shanghai

LABEL org.label-schema.vendor="potato<silenceace@gmail.com>" \
    org.label-schema.name="libreoffice-server" \
    org.label-schema.build-date="${BUILD_DATE}" \
    org.label-schema.description="LibreOffice Web Services, with the ability to call services through the Web API" \
    org.label-schema.url="https://yycc.me" \
    org.label-schema.schema-version="1.0"	\
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-ref="${VCS_REF}" \
    org.label-schema.vcs-url="https://github.com/funnyzak/libreoffice-server" 

RUN \
    echo "**** install packages ****" && \
    apk add nodejs npm git cups-libs fontconfig && \
    echo "**** cleanup ****" && \
    apk del --purge \
    rm -rf \
    /tmp/*

RUN mkdir -p /app
RUN chmod -R 777 /app
VOLUME /app

RUN git clone https://github.com/funnyzak/libreoffice-server.git /app/nodeapp
RUN npm ci --prefix /app/nodeapp

WORKDIR /app/nodeapp

COPY ./cmd.sh /

EXPOSE 3000 3001

CMD ["/bin/bash", "/cmd.sh"]
