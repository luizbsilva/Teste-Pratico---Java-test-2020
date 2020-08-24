# Teste Pratico

### Introdução

Conforme foi solicitado no documento **Teste Pratico - Java-test-2020.pdf**, foi criado uma API REST para calcular distância entre um ponto latitude/longitude até os prestadores de serviço de uma determinada especialidade.

A aplicação foi desenvolvida com os frameworks Spring Boot, Sprint REST, Spring Data, Maven e a biblioteca JSON.

A aplicação está utilizando o banco de dados em memória H2 e a massa de dados encontra-se no script **data.sql** localizado na pasta **src/main/resources**.

### Requisições

**/health-provide**

A requisição **localhost:8080/health-provider** via método HTTP **GET**, lista os prestadores de serviço de acordo com a especialidade e a localidade inicial. 

**Parâmetros:** latitude, longitude, specialtyId

Segue o JSON de retorno:

```
  [{
    name: '' ,
    address: '',
    latitude: 0,
    longitude: 0,
    distanceKM: 0
  }]
```

**/specialty**

A requisição **localhost:8080/specialty** via método HTTP **GET**, lista todas as especialidades disponíveis.

Segue o JSON de retorno:

```
  [{
    id: '' ,
    specialtyName: ''
  }]
```
