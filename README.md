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
URL: http://localhost:3000/register
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
URL: http://localhost:3000/login
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