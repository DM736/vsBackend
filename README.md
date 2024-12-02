                              Backend VirtualShop

este backend permite gestionar toda la logica relacionada con el proyecto para poder buscar o agregar productos
                              
Importacion de la base de datos
1. para poder usar la base de datos hay que importandola por mysql workbench server>Data Import o xamp
por http://localhost/phpmyadmin importar y cargar la base de datos

# Requisitos: 
- Node.js >= 16.x
- MySQL >= 8.0
- npm >= 7.x
# Dependencias  
npm i..
- bcryptjs
- cors
- express
- express-validator
- jsonwebtoken
- mysql2
- sequelize
  
# Dependencias dev 
npm i {dependencia} -D
- dotenv
- nodemon

# variables de entorno
- HT="127.0.1.2" # database Host #puede reemplazarse por localhost si se ha configurado un usuario
- US="userapp" # usuario
- PR="2oE60r1479*/" # contraseña usuario
- BN="virtualapp" # nombre de la base de datos
- SA="E5609ty29?*" # clave secreta (validacion con el token)
