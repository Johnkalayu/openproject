FROM joni/openproject:latest

ENV OPENPROJECT_SECRET_KEY_BASE=
ENV OPENPROJECT_HTTPS=false

#
ENV OPENPROJECT_RETAL__CACHE__STORE=memcache
ENV DATABASE_URL=postgres://openproject:openproject@****/openproject
ENV PGDATA=/var/openproject/pgdata 
ENV GOSU_VERSION='1.17'


VOLUME [ "${PGDATA}" "$APP_DATA_PATH" ]

EXPOSE 80

ENTRYPOINT [ "./docker/prod/entroypoint.sh" ]

CMD [ "./docker/prod/supervisord"]






