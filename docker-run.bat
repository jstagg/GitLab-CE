echo off

set GITLAB_HOME="//D/DockerDataMounts/GitLab"

docker volume create gitlab-logs
docker volume create gitlab-data
docker run --detach --hostname gitlab.homelan.lcl --publish 443:443 --publish 80:80 --publish 22:22 --name gitlab --volume %GITLAB_HOME%/config:/etc/gitlab --volume gitlab-logs:/var/log/gitlab --volume gitlab-data:/var/opt/gitlab gitlab/gitlab-ce:latest

docker network connect my-bridge-network gitlab