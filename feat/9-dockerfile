# Utilise l'image officielle légère de Nginx
FROM nginx:alpine

# Copie les fichiers du site dans le dossier publié par Nginx
COPY index.html style.css /usr/share/nginx/html/

# Indique que le conteneur utilise le port 80
EXPOSE 80