# PostgreSQL com Docker

Projeto acadêmico com PostgreSQL em container Docker e três tabelas: usuario, cliente e produto.

## Executar

Requisitos: Docker Desktop instalado e aberto.

Na pasta do projeto, execute:

```bash
docker compose up -d
```

Verifique o container:

```bash
docker compose ps
```

## Conexão

- Host: localhost
- Porta: 5432
- Banco: trabalho_db
- Usuário: postgres
- Senha: postgres123

## Acessar pelo terminal

```bash
docker compose exec postgres psql -U postgres -d trabalho_db
```

No prompt do PostgreSQL, liste as tabelas:

```sql
\dt
```

## Encerrar

```bash
docker compose down
```

Para apagar também os dados do volume (recria o banco do zero na próxima inicialização):

```bash
docker compose down -v
```

O arquivo db/init.sql roda automaticamente apenas na primeira inicialização de um volume vazio.
A coluna senha deve guardar hash, não senha em texto puro. As credenciais são apenas para desenvolvimento local.
