FROM frappe/bench:latest

WORKDIR /home/frappe/frappe-bench

COPY apps ./apps
COPY sites ./sites

ENV SITE_NAME=Newsite.localhost

ENV DB_HOST=mysql-1cd52d52-sriakila29125-4c07.e.aivencloud.com
ENV DB_PORT=17239
ENV DB_NAME=defaultdb
ENV DB_USER=avnadmin
ENV DB_PASSWORD=AVNS_ZLUm8CKVh0-dzE_jMV7

ENV REDIS_CACHE=redis://default:ASmcAAIncDJlZTdjNzhiMTVlY2I0MThhODliZDZkYmU4Mjk5ZWY2Y3AyMTA2NTI@hardy-kite-10652.upstash.io:6379
ENV REDIS_QUEUE=redis://default:ASmcAAIncDJlZTdjNzhiMTVlY2I0MThhODliZDZkYmU4Mjk5ZWY2Y3AyMTA2NTI@hardy-kite-10652.upstash.io:6379
ENV REDIS_SOCKETIO=redis://default:ASmcAAIncDJlZTdjNzhiMTVlY2I0MThhODliZDZkYmU4Mjk5ZWY2Y3AyMTA2NTI@hardy-kite-10652.upstash.io:6379

ENV FRAPPE_ADMIN_PASSWORD=admin@123

EXPOSE 8000

CMD ["bench", "start"]
