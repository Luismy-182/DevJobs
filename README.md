# DevJobs
Aplicación web monolítica para publicar empleos de desarrolladores web, permite postulaciones a los usuarios, una vista pública para las publicaciones de empleo, carga de archivos, así como también una zona administrativa para los reclutadores, donde puede obtener conocer a los postulantes y su información de contacto como también el CV, creado con Laravel 9, breeze, y Livewire en el frontend con tailwindcss


Nota para el dev: si al subir a un hosting no muestra las imágenes almacenadas, pero sí localmente, entonces estamos ante un problema de permisos en la carpeta storage
dar permisos 777 a carpeta /storage y carpeta de enlace /public/storage
Adicionalmente crear un archivo .httaccess el la raíz del proyecto con mi siguiente configuración:

<IfModule mod_rewrite.c>
    <IfModule mod_negotiation.c>
        Options -MultiViews -Indexes
        </IfModule>


        RewriteEngine On

        RewriteCont %{HTTP:Autorization} .
        RewriteRule .* [E=HTTP_Autorization:%{HTTP:Autorization}]

        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_URI} (.+)/$

        RewriteRule ^ %1 [L,R=301]

        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_FILENAME} !-f

        RewriteRule ^ index.php[L]
</IfModule>



