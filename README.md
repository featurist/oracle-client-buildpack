# Description

This buildpack adds the [Oracle Client libraries](https://www.oracle.com/database/technologies/instant-client.html).

It is intended to be used in conjunction with other buildpacks (e.g. node) for apps that require Oracle db connection: 

```bash
$ heroku buildpacks
=== <your-heroku-app> Buildpack URLs
1. heroku-community/apt
2. https://github.com/observablehq/oracle-instant-client-buildpack
3. heroku/nodejs
```

## Usage

You will need the [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) buildpack, **preceding** this one. 

```bash
$ heroku buildpacks:set https://github.com/heroku/heroku-buildpack-apt
```

And an `Aptfile` in the root of your app containing:

```
libaio1
```

Then add the `oracle-instant-client-buildpack` to the list of buildpacks: 

```bash
$ heroku buildpacks:set https://github.com/observablehq/oracle-instant-client-buildpack
```

