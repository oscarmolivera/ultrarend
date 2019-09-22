# README
## Sumario
**ULTRARend** Es una aplicación de rendición de cuentas para una empresa. Apunta a gestionar todo 
lo concerniente a la creación de solicitudes de pagos, revisión por parte de supervisores, carga en 
un maestro de solicitudes y su posterior pago o anulación, junto a un pequeño grupo de reportes y 
gráficos de análisis. **ULTRARend** ha sido creado, como un sistema de ensayo y propuesta para la 
enseñanza de Ruby on Rails.
## Prueba la aplicacion en Heroku
[ULTRARend](https://rails-ultrarend.herokuapp.com/).

## Instalacion
### Pre Requisitos
* Firefox version 69 o superior
* Ruby version: 2.5.1
* Rails version 5.2.3
* PostgreSQL 10.10 

### Paso 1
Clonar el archivo desde el repositorio y descomprimirlo en una carpeta en su computador

Configurar el archivo /config/database.yml para su entorno local
### Paso 2 
* Instalar todas las gemas
```console
bundle install
```
Crear las bases de datos 
```console
rails db:create
```
Migrar las tablas
```console
rails db:migrate
```
Cargar con registros de prueba
```console
rails db:seed
```
### Paso 3
 * Ingresa al sistema con:
    Usuario Admin: admin@test.cl
    contraseña: AUser.123

    Usuario Trabajador: sp-i@test.cl
    contraseña: AUser.123

    Usuario Auxiliar Contable: sp-c@test.cl
    contraseña: AUser.123

    Usuario Jefe Area: ja@test.cl
    contraseña: AUser.123

    Usuario Jefe Contable: jc@test.cl
    contraseña: AUser.123