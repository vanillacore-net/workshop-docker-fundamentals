FROM nginx:alpine

# Arbeitsverzeichnis setzen
WORKDIR /usr/share/nginx/html

# Standard-HTML-Datei entfernen
RUN rm -rf ./*

# Eigene Webseite kopieren
COPY index.html .
COPY style.css .

# Port-Dokumentation (wird nicht wirklich geöffnet, nur dokumentiert)
EXPOSE 80

# Umgebungsvariable definieren
ENV WEBSITE_AUTHOR="Docker Workshop"
ENV WEBSITE_VERSION="1.0"

# Startup-Nachricht hinzufügen und dann Nginx starten
CMD echo "Website von ${WEBSITE_AUTHOR}, Version ${WEBSITE_VERSION} wird gestartet..." && nginx -g "daemon off;"