# nzb.to nZEDb Proxy

This provides a nZEDb tor proxy, that lets you connect *arr services to nzb.to.

## Setup

Download the `docker-compose.yaml`:

Windows:

```powershell
Invoke-WebRequest -Uri https://raw.githubusercontent.com/AbstractBackspace/nzb.to-nZEDb/master/docker-compose.yml -OutFile docker-compose.yml
```

Linux:

```bash
wget https://raw.githubusercontent.com/AbstractBackspace/nzb.to-nZEDb/master/docker-compose.yml
```

Then adjust the following environment variables in the `docker-compose.yml` file:

* *TMDB_KEY* - Enter your TMDB API key (https://www.themoviedb.org/settings/api)
* *SALT_KEY* - Enter a random string of characters. Should have 16, 24 or 32 chars (Create one with:
  e.g. `openssl rand -base64 32`)

Then run the following command:

```bash
docker-compose up -d
```

and visit http://localhost:8080 to configure the nzb.to to nZEDb proxy instance.
After the configuration is done, the web page shows an API Key.
This API Key can be used to connect your *arr service to the nZEDb instance.

Just enter the following URL as the indexer URL:

```bash
http://<ip-of-device>:8080
```

and enter the API Key as the API Key.
