# Description

Buildpack adds Oracle Client libraries.

It is intended to be used in conjunction with other buildpacks (e.g. node) for apps that require Oracle db connection.

## Usage

Either add `https://github.com/featurist/oracle-client-buildpack` to `.buildpacks` or set `BUILDPACK_URL=https://github.com/featurist/oracle-client-buildpack`
You also need API buildpack, preceding this one. And an `Aptfile` in the root of your app containing:

```
libaio1
```

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

## We're Hiring!
Featurist provides full stack, feature driven development teams. Want to join us? Check out [our career opportunities](https://www.featurist.co.uk/careers/).
