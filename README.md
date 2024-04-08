# Playwright-go Docker Image

This repo contains CI to build a docker image containing playwright and its dependencies.
These dependencies would normally be installed on a developers machine with:
```sh
go run github.com/playwright-community/playwright-go/cmd/playwright@latest install --with-deps
```

Behind corporate proxies or in some isolated environments this can be an issue.

---

Use this docker image as so:
```dockerfile
USE ghcr.io/manfromth3m0on/playwright-go:v0.4201.1

// Copy in your tests
COPY . .

// Run your tests
CMD [ "go" "test" "./component_tests" ]
```
