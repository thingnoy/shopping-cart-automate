## Step(Self-test)
- run unit test
```sh
cd shopping-service/cmd/tests
go mod download
go test -v 2>&1 | go-junit-report > report.xml
```

- start application
```sh
docker-compose up -d --build --force-recreate
```

- run API test
```sh
cd test
robot checkout-success-template.robot
```

- run UI test
```sh
```

- Stop application
```sh
docker-compose down
```