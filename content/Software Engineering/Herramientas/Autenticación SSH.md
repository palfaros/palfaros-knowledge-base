---
title: Autenticación SSH
date: 2026-04-24
---
## Autenticación SSH: Claves Pública y Privada

### ¿Qué es el sistema de clave pública-privada?

Es un método de criptografía asimétrica basado en un par de archivos vinculados matemáticamente:

*   **Clave Pública (El "Candado"):** Es la que compartes con el mundo. Se instala en el servidor al que quieres acceder. No importa si alguien la ve, ya que solo sirve para cifrar o verificar, no para abrir el acceso.
*   **Clave Privada (La "Llave"):** Es la que guardas únicamente en tu computadora personal. Debe estar protegida (a veces con una contraseña adicional) y **nunca** debe compartirse ni subirse a ningún sitio.

### ¿Por qué se utiliza para SSH?

Es el estándar de seguridad profesional por varias razones:
1.  **Adiós a las contraseñas:** Evita ataques de "fuerza bruta" donde bots intentan adivinar tu clave miles de veces por segundo.
2.  **Identidad inequívoca:** Solo quien posee la clave privada física puede entrar al servidor que tiene la pública.
3.  **Automatización:** Permite que herramientas como **VS Code** o scripts se conecten de forma segura sin pedirte la contraseña cada vez.

### Configuración SSH: De PC Local a VPS (Método Estándar)

Este es el flujo profesional: generas las llaves en tu computadora, guardas la privada bajo llave y envías la pública al servidor.

#### Generar el par de claves en tu PC Local

Abre la terminal de tu computadora (PowerShell en Windows, o Terminal en Mac/Linux) y ejecuta:

```bash
ssh-keygen -t ed25519 -C "<COMENTARIO>"
```

1. **Ruta:** Presiona `Enter` para usar la carpeta por defecto (`~/.ssh/id_ed25519`).
2. **Passphrase:** Opcional. Si pones una, te la pedirá cada vez que uses la llave (más seguro). Si no, presiona `Enter` dos veces (más cómodo).

#### Copiar la clave PÚBLICA al VPS

Ahora debes decirle al servidor que confíe en tu PC. Debes copiar el contenido de tu clave pública (`.pub`).

##### Opción A: Automático (Solo Linux/Mac)

```bash
ssh-copy-id -i ~/.ssh/id_ed25519.pub usuario@IP_DEL_VPS
```

##### Opción B: Manual (Windows o si falla la anterior)

1. En tu PC, muestra la clave pública y cópiala:
   `cat ~/.ssh/id_ed25519.pub`
2. Conéctate a tu VPS (con contraseña por última vez).
3. Pega la clave dentro del archivo de autorizados:

   ```bash
   mkdir -p ~/.ssh
   echo "PEGA_AQUÍ_TU_CLAVE_COPIADA" >> ~/.ssh/authorized_keys
   chmod 600 ~/.ssh/authorized_keys
   chmod 700 ~/.ssh
   ```

#### Configurar VS Code para conexión rápida

Para no escribir la IP y el usuario cada vez, edita (o crea) el archivo `config` en la carpeta `.ssh` de tu **PC local**:

```text
Host mi-servidor
    HostName IP_DE_TU_VPS
    User tu_usuario
    IdentityFile ~/.ssh/id_ed25519
```

#### Conectar desde VS Code

1. Abre VS Code y presiona `F1`.
2. Busca: `Remote-SSH: Connect to Host...`
3. Elige `mi-servidor`. 
4. ¡Listo! Ya estás dentro sin usar contraseñas.

---
**Regla de oro:** La clave `id_ed25519` (privada) nunca sale de tu PC. La clave `id_ed25519.pub` (pública) es la que repartes a tus servidores o a GitHub.
