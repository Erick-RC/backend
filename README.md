# Autenticación API

Esta API proporciona funcionalidades de registro, inicio de sesión, obtención de información del usuario actual y actualización del perfil del usuario.

## Requisitos Previos

- Node.js
- MySQL
- VSCode (con la extensión Thunder Client) o Postman

## Configuración

1. Clona el repositorio y navega a la carpeta del proyecto:

   git clone <repositorio>
   cd <proyecto>

## Instala las dependencias: 
npm install

## Configura la base de datos MySQL y asegúrate de actualizar el archivo .env con las configuraciones correctas:

DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_DATABASE=users
DB_PORT=3306
PORT=3000
SECRET_KEY=your_secret_key
## Inicia el servidor:

npm run dev

## Pruebas de Rutas
Usando Thunder Client (VSCode) o Postman
1. Registro (/register)
Método: POST 
URL: http://localhost:3000/api/auth/register
Cuerpo (Body): JSON

{
  "email": "test@example.com",
  "password": "password123"
}

Respuesta esperada: 201 Created

{
  "message": "User registered successfully",
  "user": {
    "insertId": 1,
    "affectedRows": 1,
    "warningStatus": 0
  }
}
## 2. Inicio de sesión (/login)
Método: POST
URL: http://localhost:3000/api/auth/login
Cuerpo (Body): JSON

{
  "email": "test@example.com",
  "password": "password123"
}

Respuesta esperada: 200 OK
{
  "token": "jwt_token_here",
  "user": {
    "id": 1,
    "email": "test@example.com",
    "password": "$2b$10$hash_here",
    "created_at": "2024-01-01T00:00:00.000Z"
  }
}
## 3. Obtener Usuario Actual (/me)
Método: GET
URL: http://localhost:3000/api/auth/me
Encabezado (Headers):
Authorization: Bearer token (reemplaza token con el token JWT recibido en la respuesta de la solicitud de inicio de sesión)
Respuesta esperada: 200 OK

{
  "id": 1,
  "email": "test@example.com",
  "name": "User Name",
  "biografia": "User biography",
  "phone": "1234567890",
  "photo": "photo_url",
  "created_at": "2024-01-01T00:00:00.000Z"
}

## 4. Actualización de Perfil (/update-profile)
Método: PUT
URL: http://localhost:3000/api/auth/update-profile
Encabezado (Headers):
Authorization: Bearer token (reemplaza token con el token JWT recibido en la respuesta de la solicitud de inicio de sesión)
Cuerpo (Body): JSON

{
  "photo": "new_photo_url.jpg",
  "name": "New Name",
  "biografia": "New biography",
  "phone": "1234567890",
  "email": "newemail@example.com",
  "password": "newpassword123"
}
Respuesta esperada: 200 OK

  "message": "Profile updated successfully",
  "result": {
    "affectedRows": 1,
    "changedRows": 1,
    "warningStatus": 0
  }
};
## Solución de Problemas
Si alguna de las solicitudes no funciona como se espera, asegúrate de que:

El servidor está corriendo y accesible.
Las rutas están correctamente definidas.
El encabezado de autorización tiene el token JWT correcto.
El cuerpo de la solicitud está bien formado según lo que espera la API.
Si encuentras algún problema, revisa los detalles específicos del error y ajusta las solicitudes en consecuencia.