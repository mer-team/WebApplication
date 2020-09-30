# Portal para interação com microsserviços de reconhecimento de emoções em música

<!-- [![Build Status](https://travis-ci.org/Tiago622/Projeto-Final.svg?branch=main)](https://travis-ci.org/Tiago622/Projeto-Final) -->

## Colocar a base de dados MySQL em funcionamento (vagrant)

```bash
vagrant up
```

## Acesso à base de dados

```bash
vagrant ssh
mysql -uuser -p123qwe
```

## Executar backend (node.js)

```bash
cd merApi
npm start
```

## Executar frontend (react)

```bash
cd merWeb
npm start
```

## Executar a migrations e seed

```bash
cd merApi
npx sequelize-cli db:migrate
npx sequelize-cli db:seed:all
```

## Executar testes automatizados ao login (Jest)

```bash
cd merApi
npm test
```

## Autenticação de utilizador da seed

```bash
username: admin
password: 123Qwe..
```