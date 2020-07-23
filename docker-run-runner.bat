echo off

set GITLAB_HOME="//D/DockerDataMounts/GitLabRunner"

REM docker volume create gitlab-runner-sock
docker run -d --name gitlab-runner --restart always -v %GITLAB_HOME%/run/docker.sock:/var/run/docker.sock -v %GITLAB_HOME%/config:/etc/gitlab-runner:Z gitlab/gitlab-runner:latest

REM VpNZmS1V3GNU2TqgenTp http://localhost/
REM register:
REM docker run --name gitlab-runner --rm -it -v %GITLAB_HOME%/config:/etc/gitlab-runner gitlab/gitlab-runner:latest register
REM docker network connect my-bridge-network gitlab-runner
REM example:
REM docker run --rm -it -v gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner:latest register