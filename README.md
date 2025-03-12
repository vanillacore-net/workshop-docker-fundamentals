# Docker Workshop - Webserver Beispiel

Dieses Repository enthält ein einfaches Beispiel für einen Docker-Container, der einen Nginx-Webserver mit einer benutzerdefinierten Webseite bereitstellt. Die Webseite dient gleichzeitig als Referenz für die wichtigsten Docker-Befehle.

## Inhalt

- `Dockerfile` - Definiert, wie das Docker-Image gebaut wird
- `index.html` - Die Hauptwebseite mit Befehls-Referenz
- `style.css` - Styling für die Webseite
- `README.md` - Diese Datei

## Voraussetzungen

- Docker installiert ([Docker Desktop](https://www.docker.com/products/docker-desktop) für Windows/Mac oder [Docker Engine](https://docs.docker.com/engine/install/) für Linux)

## Schnellstart

### Image bauen

```bash
# Im Verzeichnis mit dem Dockerfile
docker build -t docker-workshop-webserver .
```

### Container starten

```bash
# Container im Hintergrund starten, Port 80 auf 8080 mappen
docker run -d -p 8080:80 --name meine-website docker-workshop-webserver
```

### Webseite aufrufen

Öffne einen Browser und navigiere zu [http://localhost:8080](http://localhost:8080)

### Container stoppen und löschen

```bash
docker stop meine-website
docker rm meine-website
```

## Benutzerdefinierte Umgebungsvariablen

Du kannst die Umgebungsvariablen beim Starten des Containers anpassen:

```bash
docker run -d -p 8080:80 -e WEBSITE_AUTHOR="Dein Name" -e WEBSITE_VERSION="2.0" docker-workshop-webserver
```

## Auf Docker Hub veröffentlichen

```bash
# Anmelden
docker login

# Image taggen
docker tag docker-workshop-webserver DEIN-USERNAME/docker-workshop-webserver:1.0

# Image pushen
docker push DEIN-USERNAME/docker-workshop-webserver:1.0
```

## Referenzierte Befehle

Die Webseite enthält eine Referenz der wichtigsten Docker-Befehle in den Kategorien:
- Container Management
- Image Management
- Volume & Netzwerk
- Docker Hub

## Beispiel erweitern

1. Bearbeite die HTML- und CSS-Dateien nach deinen Wünschen
2. Baue das Image neu
3. Starte einen neuen Container

## Lizenz

Dieser Code wird unter der [GNU General Public License v3.0 (GPL-3.0)](https://www.gnu.org/licenses/gpl-3.0.en.html) zur Verfügung gestellt.

Du darfst den Code frei:
- Verwenden
- Teilen
- Modifizieren

unter der Bedingung, dass abgeleitete Werke ebenfalls unter der GPL-3.0 lizenziert werden.

## Workshop Material

Dieses Repository ist Teil eines Docker-Workshops und dient zu Schulungszwecken. Die Webseite enthält eine Übersicht der wichtigsten Docker-Befehle und kann als Referenz während des Workshops genutzt werden.