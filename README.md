# AuxAula

Título del TFG: 

AuxAula: Contruyendo puentes entre alumno y profesor. Transformar la distracción en productividad

Director: Jesús Correas Fernández

Autor: Carlos Montoto Jáuregui

Fecha: 31/05/2019

Enlace al código del prototipo de la app:

https://drive.google.com/file/d/1kp0_z2G1bgZ2uxoS0fl2Bfhriz42MDRQ/view?usp=sharing

Resumen:

La rápida evolución de la tecnología móvil y su democratización, debido al decremento de su coste y a su alta variedad de gamas en el mercado; junto a la inexistencia de una educación de manejo responsable y a su uso inadecuado, han conllevado a que las nuevas generaciones cada vez tengan mayor dependencia de estos dispositivos. Este uso continuado afecta, en consecuencia, a muchos aspectos de nuestras vidas, incluyendo las relaciones personales, laborales o académicas.

El objetivo de este proyecto es el de desarrollar una herramienta que, utilizando el potencial positivo de esta tecnología, ayude a los usuarios a disminuir las distracciones y a enfocar su atención, inhibiendo factores disruptivos de la concentración mostrando, de forma transparente, el uso del dispositivo y utilizando métodos de la educación dinámica.

Para ello, tras realizar un estudio de la situación actual, se ha diseñado e implementado el prototipo de una aplicación académica para alumnos y profesores, que, utilizando los métodos ya mencionados, incremente los resultados del aprendizaje en el aula, a la par que intenta construir buenos hábitos de uso y recuperar la confianza en la tecnología.

Instrucciones de uso

Debido a que el prototipo utiliza un servidor local, es necesario instalar algunas herramientas que nos permitan probarlo.

•	Instalar XAMPP.

•	Una vez instalado, en el panel de control de XAMPP, pulsar los botones Start que hay a la derecha de Apache y MySQL.

•	Acceder al panel de control de phpMyAdmin presionando el botón Admin a la derecha MySQL en el panel de control de XAMPP o accediendo a la dirección: http://localhost/phpmyadmin/

•	 A la izquierda, pulsar en Nueva y rellenar la casilla de título poniendo auxaulabd y seleccionando utf8_bin. Pulsar el botón Crear de la derecha.

•	Seleccionar la nueva base de datos creada. Una vez abierta pulsar el botón Importar que se encuentra en la barra superior.

•	Pulsar el botón examinar y seleccionar el fichero auxaulabd.SQL. Puede descargarse dentro de la carpeta Server Resourses del repositorio de AuxAula. Tras seleccionar el archivo pulsar el botón Continuar que se encuentra en la parte inferior.

•	Introducir las carpetas phpfiles y documents en la carpeta htdocs que se encuentra dentro del directorio de XAMPP.

De este modo tenemos creada la base de datos con algunos datos para probar el prototipo, pero para ello, primero hay que modificar la dirección IP que tienen los documentos de la base de datos por la propia (esto es debido a utilizar un servidor local). Además, hay que hacer lo mismo cambiando la línea superior del archivo DB del paquete DB. 

Ahora es necesario instalar Android Studio o utilizar cualquier otro emulador para utilizar AuxAula. Si se utiliza Android Studio basta con abrir el proyecto y ejecutarlo. Si, por lo contrario, se utiliza un emulador externo, hay que volver a generar el fichero APK dado que se ha modificado la IP del servidor. Para asegurar que todas las funcionalidades del prototipo funcionan, debido a que algunos métodos requieren versiones de Android mínimamente recientes para funcionar, se recomienda utilizar un emulador con Android 7.0, API 24.

Una vez configurado todo, ya puede empezar a probarse el prototipo introduciendo el nombre y contraseña de cualquier usuario que haya en la base de datos. Si no se desea introducir nuevos datos o buscar en ella, puede utilizarse el usuario alu1 y la contraseña 123.
