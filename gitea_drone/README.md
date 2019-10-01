# gitea+drone Configurations

- https://docs.gitea.io/en-us/install-with-docker/
- https://sysadmins.co.za/self-hosted-git-and-cicd-platform-with-gitea-and-drone-on-docker/
- https://dev.to/alex_barashkov/getting-started-with-open-source-drone-ci-4pgc
- https://medium.com/faun/setup-a-drone-cicd-environment-on-docker-with-letsencrypt-69b259d398fb

You have to create a normal user to run the docker-compose file and in that user's home directory create the directorys:

- drone
- dronedata
- gitea
- mysql

which will contain all the repositories and data so it is easy to backup
