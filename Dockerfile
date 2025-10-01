# Utiliser une image nginx officielle comme base
FROM nginx:alpine

# Installer 'file' (obligation du TP)
RUN apk add --no-cache file

# Répertoire de travail (pas obligatoire mais pratique)
WORKDIR /var/concentration

# Copier le site (sources HTML + code)
COPY html/ /var/concentration/html/

# Copier notre configuration nginx dans /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80
EXPOSE 80

# Commande de démarrage
CMD ["nginx", "-g", "daemon off;"]

