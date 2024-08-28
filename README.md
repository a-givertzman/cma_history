# CMA History

The part of the [CMA Server](https://github.com/a-givertzman/fr-service)

- Contains SQL scripts for the historian database for the CMA Server
- Contains deb package for the automated installation required
(for CMA Server History service) database configuration

## Dependencies

Following software pacages has to be preinstalled by user

- [CMA Server](https://github.com/a-givertzman/fr-service)
- [API Server](https://github.com/a-givertzman/api-server)
- [Postgres for debian](https://www.postgresql.org/download/linux/debian/)

## Configuration

- if executing from github actions

- if executing localy
the configuration for the database connection stored in the `./src/conf`

build deb paclage using the command :
```bash
.github/workflows/packaging/deb/build.sh x.y.z dbname dbuser dbpass
 for example building version number 0.1.1
.github/workflows/packaging/deb/build.sh 0.1.1
```

this file must contains following lines:

```bash
db="cma"
user="cma"
pass="00d0"
```
