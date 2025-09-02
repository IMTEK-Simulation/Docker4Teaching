# Docker4Teaching
Ein Docker Image für Vorlesungen des *Lehrstuhls für Simulationstechniken* der Uni Freiburg.

Dieses Docker Image stellt die JupyterLab Entwicklungsumgebung mit den notwendingen Libraries zur Verfügung.

Neben diesem Docker Image gibt es auch [andere](#alternatives) Möglichkeiten JupyterLab zu installieren und zu nutzen. Wir empfehlen Docker, weil es am zuverlässigsten auf jedem Computer läuft.

# Docker Image
### Installation
#### Installieren Sie [Docker](https://docs.docker.com/desktop/).
- Für Linux: [hier](https://docs.docker.com/desktop/setup/install/linux/)
- Für Windows: [hier](https://docs.docker.com/desktop/setup/install/windows-install/)
- Für Mac: [hier](https://docs.docker.com/desktop/setup/install/mac-install/)

#### Starten der Entwicklungsumgebung
1. Starten Sie Docker Desktop.
2. Öffnen Sie ein Terminal/Konsole.

##### Ohne Git
2. Laden Sie die Datei `docker-compose.yml` [hier](https://raw.githubusercontent.com/IMTEK-Simulation/Docker4Teaching/main/docker-compose.yml) herunter und speichern Sie sie in einem neuen Verzeichnis - oder erzeugen Sie eine neue Datei mit einem Texteditor mit folgendem Inhalt:
   ```yaml
   services:
     web:
       image: ghcr.io/flemk/docker-4-teaching:latest-dev  # Das Docker Image
       ports:
         - "8888:8888"  # Port auf dem JupyterLab läuft
       volumes:
         - ./notebooks:/home/jovyan/work  # Verzeichnis für Notebooks (wichtig!)
   ```
3. Wechseln Sie in das Verzeichnis, in dem Sie die Datei gespeichert haben.
4. Starten Sie die Entwicklungsumgebung:
   ```bash
   docker-compose up -d
   ```
5. Öffnen Sie Ihren Browser und gehen Sie zu [http://localhost:8888](http://localhost:8888). Sie sollten die JupyterLab-Oberfläche sehen.
6. Wenn Sie aufgefordert werden, geben Sie das Passwort `teaching` ein.
##### Mit Git
2. Klonen Sie dieses Repository:
   ```bash
   git clone https://github.com/IMTEK-Simulation/Docker4Teaching.git
   ```
3. Wechseln Sie in das Verzeichnis:
   ```bash
   cd Docker4Teaching
   ```
4. Starten Sie die Entwicklungsumgebung:
   ```bash
   docker-compose up -d
   ```
5. Öffnen Sie Ihren Browser und gehen Sie zu [http://localhost:8888](http://localhost:8888). Sie sollten die JupyterLab-Oberfläche sehen.
6. Wenn Sie aufgefordert werden, geben Sie das Passwort `teaching` ein.

#### Stoppen der Entwicklungsumgebung
Um die Entwicklungsumgebung zu stoppen, führen Sie folgenden Befehl im Verzeichnis mit der `docker-compose.yml` Datei aus:
```bash
docker-compose down
```

# Probleme?
Wenn Sie Probleme haben, bitte schreiben Sie uns!
