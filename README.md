# Nominatim Setup (Autocomplete API)

This is a **self-hosted Nominatim** setup.

## Setup

1. Execute `setup.sh` file:

```bash
chmod +x ./setup.sh
./setup.sh
```

2. Import data:

```bash
docker-compose run --rm import-data
```

3. Start container:

```bash
docker-compose up -d api
```

Nominatim is now running on your server.

---

## Setup authentication via Nginx for production uses

copy `nginx.conf` file to configuration file in sites-available folder:

```bash
cp nginx.conf /etc/nginx/sites-available/mydomain
```

.

## Axios Example

```ts
import axios from 'axios';

const NOMINATIM_URL = 'http://localhost:8585/search';
const API_KEY = 'SECRET_API_KEY';

async function searchAddress(query: string) {
	const res = await axios.get(NOMINATIM_URL, {
		params: { q: query, format: 'json', addressdetails: 1, limit: 5 },
		headers: { 'X-API-Key': API_KEY },
	});
	return res.data;
}
```
