## Registro de Usuario ##
Crear una nueva solicitud (New Request).
Configurar la solicitud:
Método: POST
URL: http://localhost:5000/auth/register
Body: Selecciona JSON y agrega el siguiente JSON:
json
Copiar código
{
  "email": "johndoe@example.com",
  "password": "Password123"
}
Enviar la solicitud (Send).


## Inicio de Sesión Exitoso ## 

Método: POST
URL: http://localhost:3000/api/auth/login
Cuerpo (JSON):
json
Copiar código
{
  "email": "johndoe@example.com",
  "password": "Password123"
}