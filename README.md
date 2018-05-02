### UBS VIEW ###

Aplicativo que irá informar ao visitante as UBSs mais próximas de acordo com sua localidade ou com a localidade informada.

- Ruby version 2.3.3
- Rails version 5.1.0

### Variáveis de ambiente necessárias

```bash
export RAILS_ENV='development'

export DATABASE_URL='mysql2://username:password@host/database'

export ASSETS_PREFIX='/assets'
```

### Assets

#### Precompilando

Gerar novos assets

```bash
RAILS_ENV=production RAILS_GROUPS=assets rake assets:precompile
```

Comitar todos os arquivos gerados.
