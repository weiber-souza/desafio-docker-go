# desafio-docker-go

Criar uma imagem GO que ao ser executada realiza o print da seguinte mensagem: "Full Cycle Rocks!!".
A imagem deve ser inferion a 2mb.

# Build da Imagem 

```
    $ docker build -t weibersouza/desafio-go .
```

# Pull da Imagem do Docker Hub

```
    $ docker pull weibersouza/desafio-go 
```


# Executar o Container

```
    $ docker run --rm weibersouza/desafio-go
```

