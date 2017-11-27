# Description

Buildpack adds Oracle Client libraries.

It is intended to be used in conjunction with other buildpacks (e.g. node) for apps that require Oracle db connection.

## Usage

Either add `https://github.com/featurist/oracle-client-buildpack` to `.buildpacks` or set `BUILDPACK_URL=https://github.com/featurist/oracle-client-buildpack`

## Testing

### Setup

```
heroku create --buildpack https://github.com/heroku/heroku-buildpack-testrunner
```

### Run

```
git push heroku master
heroku run tests
```
