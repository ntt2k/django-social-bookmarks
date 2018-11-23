# Django Social Bookmarks
### The ultimate example boilerplate code for Django microservices with Docker
Django Social Bookmarks is an open-source example boilerplate code written in Python that focuses on quick development and clean, pragmatic design with 12 Factors of App Methodology. (see design principle links section below)

It's a bookmark application similar to Delicious or Pinboard developed using the latest Python Django web technologies: Django 1.11 LTS, PostgreSQL, Gunicorn, Nginx together with best practice DevOps Docker container.

![screenshot](screenshots/logo.png)
![architecture](screenshots/architecture_diagram_django.png)

#### TL;DR
#### - FAQ: Why are we doing this?
I've successfully setup this stack a couple times now and have seen it done in professional settings so the only reason is basically "monkey see monkey do". Why not simply run a Django or Flask server that takes requests straight from port 80 instead of the reverse proxy?

#### - Answer:
This reddit thread simply answered it :point_right:
https://www.reddit.com/r/Python/comments/68phcu/why_nginxgunicornflask/

### Installation instructions

#### Prerequisite

| Tool | Link |
| ------ | ------ |
| Docker | https://www.docker.com/ |

### Docker
Django Social Bookmarks is very easy to install and deploy with Docker containers.

By default, the main web app will expose port 8080, so change this within the docker-compose file if necessary. When ready, simply use the docker-compose.yml to build and deploy the images.

```sh
git clone https://github.com/ntt2k/django-social-bookmarks.git
cd django-social-bookmarks
docker-compose up
```

#### Login Social Bookmarks Web App

http://localhost:8080/

| username | password |
| ------ | ------ |
| admin | adminpassword |

![demo 1](screenshots/demo1.png)
![demo 2](screenshots/demo2.png)

#### :star: Automatic generate the current app models visualization (built-in feature)
![models visualized](app/app_models_visualized.svg)

#### :star: Automatic run security check report for vulnerabilities and asserts that PEP 508 requirements are being met by the current environment. (built-in feature)
![folder tree](screenshots/tree.png)
![security report](screenshots/security-report.png)

### The 12 Factors of App Methodology Microservices check-list

:point_right: https://blog.scottlogic.com/2017/07/17/successful-microservices-with-12factor-app.html

:point_right: https://www.cuelogic.com/blog/12-factor-design-methodology-and-cloud-native-applications

:point_right: https://hub.packtpub.com/how-to-build-12-factor-design-microservices-on-docker-part-1/

| # | Factor | Description | Status
| ------ | :------: | :------ | :------: |
| 1 | Codebase | There should be exactly one codebase for a deployed service with the codebase being used for many deployments. | :white_check_mark:
| 2 | Dependencies | All dependencies should be declared, with no implicit reliance on system tools or libraries. | :white_check_mark:
| 3 | Config | Configuration that varies between deployments should be stored in the environment. | :white_check_mark:
| 4 | Backing services | All backing services are treated as attached resources and attached and detached by the execution environment. | :white_check_mark:
| 5 | Build, release, run | The delivery pipeline should strictly consist of build, release, run. | :white_check_mark:
| 6 | Processes | Applications should be deployed as one or more stateless processes with persisted data stored on a backing service. | :white_check_mark:
| 7 | Port binding | Self-contained services should make themselves available to other services by specified ports. | :white_check_mark:
| 8 | Concurrency | Concurrency is advocated by scaling individual processes. | :white_check_mark:
| 9 | Disposability | Fast startup and shutdown are advocated for a more robust and resilient system. | :white_check_mark:
| 10 | Dev/Prod parity | All environments should be as similar as possible. | :white_check_mark:
| 11 | Logs | Applications should produce logs as event streams and leave the execution environment to aggregate. | :x:
| 12 | Admin Processes | Any needed admin tasks should be kept in source control and packaged with the application. | :white_check_mark:

### Release Notes

#### Improvements

- This boilerplate code used extensively new python package manager **Pipenv**. Pipenv is a tool that aims to bring the best of all packaging worlds (bundler, composer, npm, cargo, yarn, etc.) to the Python world. It automatically creates and manages a virtualenv for your projects, as well as adds/removes packages from your Pipfile as you install/uninstall packages. It also generates the ever-important Pipfile.lock, which is used to produce **deterministic builds**.

The problems that Pipenv seeks to solve are multi-faceted:

- You no longer need to use pip and virtualenv separately. They work together. Even in **Docker container** I still recommend to use it.
- Managing a requirements.txt file can be problematic, so Pipenv uses **Pipfile** and **Pipfile.lock** to separate abstract dependency         declarations from the last tested combination.
- **Hashes** are used everywhere, always. **Security**. Automatically expose security vulnerabilities.
- **Strongly encourage the use of the latest versions of dependencies to minimize security risks arising from outdated components.**
- Give you insight into your dependency graph (e.g. $ **pipenv graph**).
- Streamline development workflow by loading **.env** files. **Recommend to add .env into .gitignore file when you are done with development**

:point_right: https://pipenv.readthedocs.io/en/latest/