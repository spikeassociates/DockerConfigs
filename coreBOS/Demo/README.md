# coreBOS Demo with Metabase and Adminer

## Install

- install docker-compose
- clone or download this directory "as is"
- copy [the coreBOS test database](https://github.com/tsolucio/coreBOSTests/blob/master/database/coreBOSTests.sql) into the cbconf directory **witht the name `cbdemo.sql`
- start the demo with `docker-compose up -d`
- as usual, access corebos, go to corebos updater, load and apply all

You will be able to access:

**corebos**

- `http://localhost:8080`
- users: admin, testdmy, testymd, testmdy, testtz, testes, testmcurrency
- All passwords are the same as the user name.

**adminer**

- `http://localhost:8081`
- user: root
- password: rootpass

**metabase**

- `http://localhost:3000`
- user: noreply@corebos.org
- password: corebos1

## Changes

Looking at the docker-compose file you will see where you can change the default ports and user and passwords.

To change the corebos database and use your own demo data copy the SQL dump of your database in the cbconf directory in place of the coreBOSTest database **AND** copy any custom modules you may have installed into the corebos docker image. To do that you will have to commit to your repository and change the docker-comose file included here with the name of your image.
