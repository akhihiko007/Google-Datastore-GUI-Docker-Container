# Google Datastore and GUI Docker Container
This repo contains a simple docker-compose file to run an emulated Google Datastore along with a compatible local GUI

### Requirements
To Run these containers you will require the following installed in your system - 
* Docker-Engine - 17.09.0+
* Docker-Compose - 3.4 or above

### Environment
The following environment variables must be set in the docker-compose file as per your own requirements -
* DATASTORE_PROJECT_ID - Project ID for Google Datastore(By default it is set to -> 'dummy')
* DSUI_PROJECT_ID - Default project ID you want to connect to using the GUI(It will same as the DATASTORE_PROJECT_ID if you want connect to the emulator only)
* DSUI_DATASTORE_ENDPOINT - Default Google Datastore endpoint for the the GUI(By default it points to the local emulator)

### Default Ports
* Google Datastore - 9081(internal and external)
* GUI - 8000(internal and external)

You can change them from the docker-compose file

### Mounted Volumes
* data - Persists the Google Datastore data
* gcloud - Contains Google Datastore configuration files

### Start Containers
Simply run the containers using command - `docker-compose up --force-recreate --detach`

### Set Up GOOGLE_DEFAULT_CREDENTIALS(Optional)
* Log in to the Google Datastore container using bash - `docker exec -it google-data-store /bin/bash`
* Run Command - `gcloud auth application-default login`
* Follow instructions shown on the terminal
* The Default Credentials JSON file can be found under the mounted volume - ./gcloud/application_default_credentials.json
 
