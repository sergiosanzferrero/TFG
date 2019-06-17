<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Vulnerabilidades </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <link rel="stylesheet" type="text/css" href="style/body.css">
         <link rel="shortcut icon" type="image/png" href="images/UVA.png"/>
    </head>
    <body >  
        <nav class="navbar navbar-inverse navbar-fixed-top">         
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"></button>
                    
                    <a class="navbar-left" href="#"><img src="images/UVA.png" witdth="10%" height="10%"></a>
                             
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav ">
                        <li><a data-toggle="modal" data-target="#myModal">About</a></li>
                    </ul>
                </div>
            </div>             
        </nav>        
        <br><br>
        
        <div class="container">
            <br>
            <h1>Vulnerabilidades</h1>
            <br>
            <div role="tabpanel">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active" role="presentation"><a href="#estadoRed" data-toggle="tab" role="tab">Estado de la red</a></li>
                    <li role="presentation"><a href="#vulnerabilidades" data-toggle="tab" role="tab">Escaneo de vulnerabilidades</a></li>
                    <li role="presentation"><a href="#fuerzaBruta" data-toggle="tab" role="tab"> Fuerza Bruta</a></li>
                    <li role="presentation"><a href="#DoS" data-toggle="tab" role="tab"> Denegación de servicio</a></li>
                    <li role="presentation"><a href="#escaneopuertos" data-toggle="tab" role="tab">Escaneo de puertos</a></li>
                    <li role="presentation"><a href="#spoofing" data-toggle="tab" role="tab">Spoofing</a></li>
                </ul>
            
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="estadoRed">
                        <h2>Estado de la red</h2>
                        <iframe src="http://157.88.123.102:80/app/kibana#/dashboard/ca480720-2fdf-11e7-9d02-3f49bde5c1d5?embed=true&_g()"height="800" width="100%"></iframe>
                        <br>
                        <footer class="panel-footer">©Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández</footer>
                        
                    </div>
                    
                    <div role="tabpanel" class="tab-pane fade" id="vulnerabilidades">
                        <h2>Escaneo de vulnerabilidades</h2>
                        <br>
                        <p>Existen herramientas muy similares como OpenVas o Nessus que nos permiten hacer un escaneo automatizado de vulnerabilidades. En este caso nos centraremos en Nessus, aunque ambos son muy parecidos de utilizar. </p>
                        <br>                      
                        <p>Consideraremos este tipo de herramientas como una primera aproximación a explotar un sistema o a auditar nuestra propia seguridad. Aunque en el resultado de este escaneo no se detecten vulnerabilidades, no quiere decir que no existan. Deberemos realizar análisis más complejos. </p>
                        <br>
                        <p>Los parámetros de configuración de un escaneo Nessus son los siguientes </p>      
                        <p> 
                            <ul type="square">
                                <li>Basic: para especificar aspectos básicos organizativos, incluyendo nombre y descripción del escaneo. </li>
                                <li>Discovery: para establecer el descubrimiento y la exploración de puertos, incluyendo los rangos y los métodos. </li>
                                <li>Assessment: para identificar malware, vulnerabilidades de fuerza bruta, y la susceptibilidad de un sistema web. </li>
                                <li>Report: el procesamiento y la salida del escaneo. </li>
                                <li>Advanced: otros parámetros para hacer más eficiente un escaneo. </li>
                            </ul>
                        </p>
                        <br>
                        <h4>Metasploit</h4>                    
                        <p> Metasploit es un software gratuito y open-source que puede ser usado para automatizar tareas complejas. MSFConsole es la interfaz más popular de este framework y será con la que interactuemos para lanzar exploits aprovechando las vulnerabilidades. </p>
                        <br>
                        <p> Tras haber usado Nessus para realizar un escaneo de vulnerabilidades, Mestasploit nos ofrece la posibilidad de lanzar exploits para explotar esas vulnerabilidades.  El problema de lanzar todos estos exploits es que se generará mucho ruido y se podrá detectar fácilmente. Por ello, este tipo de ataques se suelen realizar cuando se dispone de poco tiempo o simplemente se quiere auditar la seguridad.</p>
                        
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Para lanzar el escaneo, lo primero que necesitaremos será disponer del software, el cuál se puede descargar desde la <a href="https://www.tenable.com/downloads/nessus"> página oficial</a>.
                                            <br><br>  
                                            Una vez instalado, seleccionaremos los plugings que deseemos. En este apartado tendremos una lista de vulnerabilidades, podremos habilitar familias de plugins o plugins individuales para llevar a cabo. 
                                           <br><br>                                       
                                            Una vez configurado todos los parámetros del escaneo, procedemos a definir cuál será nuestro objetivo, en este caso la IP 157.88.123.102 y a lanzarlo. Cuando haya finalizado el escaneo, podremos encontrar en reports las principales vulnerabilidades del sistema objetivo que hemos incluido. Podremos exportarlo en varios formatos. Si estamos realizando un test de penetración, es recomendable exportarlo en formato .nessus para después poder importarlo, por ejemplo, en Metasploit.
                                            <br><br> 
                                            Para importar los resultados del escaneo a Metasploit usaremos  MSFConsole, que es la interfaz más popular de Metasploit y escribiremos:
                                            <br><br>                                            
                                            <code>msf > db_import ruta/.nessus #importa los resultados de Nessus<br>                                         
                                                msf > db_autopwn -x -p #lanzamiento de los exploits<br>                                         
                                                msf > sessions -l #consultar sesiones obtenidas<br></code>
                                            
                                            <br><br>
                                            De esta forma se lanzarán todos los exploits disponibles para explotar las vulnerabilidades encontradas, aunque esto generará mucho ruido. Si deseamos usar un exploit para explotar una vulnerabilidad concreta, a continuación mostraremos un ejemplo de como lanzarlo:
                                            <br><br>
                                            <code>msf > search ssh #búsqueda de un exploit<br> 
                                                msf > use auxiliary/scanner/ssh/ssh_login #selección de un exploit<br> 
                                                msf auxiliary(ssh_login) > show options #muestra los parámetros<br> 
                                                msf auxiliary(ssh_login)> set RHOSTS 157.88.123.102 #establecimiento de parámetros<br> 
                                                msf auxiliary(ssh_login)> set USERPASS_FILE /usr/share/metasploit-framework/data/wordlists/root_userpass.txt # establecimiento de parámetros<br>                                               
                                                msf auxiliary(ssh_login) > run #ejecuta exploit<br></code> 
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                  
                        
               
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detección y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                            Podremos acceder a cada una de las vulnerabilidades, clasificadas según el impacto que puedan tener en el sistema. Se incluye una descripción, referencias a otros documentos de interés y soluciones para mitigarlas. 
                                            <br><br>
                                            Es recomendable lanzar este tipo de escaneos cuando se haya diseñado y levantado una nueva red. Esto servirá tanto para ataque como para conseguir información de las vulnerabilidades de nuestra red y poder protegernos ante ellas.   
                                            <br><br>
                                            Todo el tráfico generado por este tipo de escaneos tiene su origen en el puerto 80. Esto es porque herramientas como Nessus u Openvas son usadas mediante la interfaz web. No quiere decir que siempre sea así, si lo lanzásemos mediante Metasploit el origen de los puertos no sería el 80. Aún así es un indicio de que se trata de un escaneo de vulnerabilidades. Las peticiones que se envían son a múltiples puertos, aunque los puertos que se encuentran abiertos y presentan vulnerabilidades recibirán más tráfico que otros.
                                                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                            <footer class="panel-footer">©Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández</footer>
                        </div> 
            

                    </div>
                                       

               
                    <div role="tabpanel" class="tab-pane fade" id="fuerzaBruta">
                        <h2>Fuerza bruta</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="fuerzabruta.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Un ataque de fuerza bruta consiste en que un atacante configure valores predeterminados, realice solicitudes a un servidor, utilizando esos valores y finalmente analice la respuesta. Hydra junto con Medusa son las dos herramientas que más se utilizan para realizar este tipo de ataques, ambos son crackeadores de contraseñas. Para realizar este ataque se usará un diccionario de contraseñas que se generará mediante la herramienta Crunch.</p>
                        <br>
                        <p>No solo existen diccionarios de contraseñas, también podremos encontrar diccionarios de usuarios o puertos. Cuanto menos específicos seamos, más tiempo llevará el ataque e incluso se podría no llegar a completar en un período de tiempo aceptable.</p> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Para poder realizar un ataque de estas características, lo primero que supondremos es el formato de la contraseña. Existen multitud de diccionarios con las contraseñas por defecto de muchos sistemas y las más usadas por la gente, que en ciertos casos nos puede ahorrar mucho tiempo a la hora de llevar este tipo de ataques. 
                                            <br> <br>
                                            No solo existen diccionarios de contraseñas, también podremos encontrar diccionarios de usuarios o puertos. Cuanto menos específicos seamos, más tiempo llevará el ataque e incluso se podría no llegar a completar en un período de tiempo aceptable.
                                            <br> <br>
                                            Mediante la herramienta Crunch generaremos diccionarios contemplando todas las posibilidades. Si no usa una contraseña muy robusta, será efectivo en un tiempo más o menos razonable.
                                            <br> <br>
                                            Una vez que tenemos el diccionario de posibles contraseñas, podemos proceder a lanzar el ataque de fuerza bruta hacia un servicio. Supondremos también que el usuario será root, aunque también se podría hacer un diccionario de usuarios. Para lanzar el ataque, usaremos la herramienta Hydra.
                                            <br> <br>
                                            <code>$ hydra -l root -P diccionario.txt 157.88.123.102 ssh</code>                                          
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detección y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                           Lo primero que debemos tener en cuenta es que estos ataques se realizan mediante diccionarios de usuarios y contraseñas. Muchos de estos diccionarios suelen ser muy completos y se incluyen contraseñas por defecto de dispositivos y contraseñas habituales.
                                           <br><br>
                                           Por lo tanto un primer paso es tener una contraseña que no sea tan débil ante estos ataques. Es recomendable usar contraseñas largas, con letras, números y otros caracteres. Llevar a cabo un ataque por fuerza bruta con una contraseña así, llevaría varios días y sería fácilmente detectable.
                                           <br><br>
                                           Otra de las medidas que ayudan a mitigar este tipo de ataques, es cambiar el puerto defecto. Así pues, ciertos servicios como SSH, que por defecto corren en el 22, son usualmente atacados por ataques automatizados. Aunque con un escaneo de puertos, se podría ver cuáles son los puertos que están abiertos y los servicios que corren, muchos de estos ataques son ejecutados mediante scripts, que a menos que sean dirigidos, no utilizarán otro tipo de herramientas. Cambiar el puerto, por lo tanto, aumentaría el tiempo para que tuviera éxito el ataque.
                                           <br><br>
                                           Al igual que con el resto de ataques, los IDS/IPS nos ayudarán en la detección de estos ataques. La monitorización de la red nos permitirá identificar los ataques, viendo picos donde se registran más peticiones a un puerto determinado. Al contrario que en un escaneo de puertos, se puede observar que el ataque va dirigido a un puerto en concreto y que muchas de las peticiones van dirigidas.
                                           <br><br>
                                           Posibilidades para mitigar este tipo de ataques:
                                           <br><br>
                                           <ul type="square">
                                               <li>Edición del archivo de configuración para el demonio /etc/ssh/sshd_config:
                                                   <ul>
                                                       <li>No permitir el acceso mediante root. Esto nos permitirá que cuando usen un diccionario para los usuarios, no puedan usar root. Para ello escribiremos en el fichero: <code>PERMITROOTLOGIN NO</code></li>
                                                       <li>Usar versiones seguras de los servicios. En el caso de SSH, la versión 1 del protocolo tiene muchas vulnerabilidades conocidas, por lo que debemos usar la 2. Escribimos en el fichero: <code>PROTOCOL 2</code></li>
                                                       <li>Modificar el número de segundos que la pantalla de login está activa, para que pasado el tiempo se cierre. Escribimos en el fichero: <code>LOGINGRACETIME 30</code></li>
                                                       <li>Modificar el número de intentos máximos que podemos fallar el login, después de estos intentos fallidos se cerrará la conexión. Escribimos en el fichero: <code>MAXAUTHTRIES 3</code></li>
                                                   </ul>
                                                     
                                                   
                                               </li> 
                                               <br>
                                               <li>Desactivar contraseñas, uso de RSA, clave pública y privada.</li>
                                               <br>
                                               <li>Monitorización y bloqueo de IP mediante ACL</li>
                                               <br>
                                               <li>Portknocking. Consiste en esconder un puerto hasta que una secuencia de puertos ocurra. En Linux, el software más utilizado es knockd. Un servidor knockd escucha todo el tráfico que pasa por una interfaz Ethernet, buscando secuencias de puertos <br><br>El cliente enviará paquetes UDP o TCP a unos puertos específicos del servidor. No necesariamente tienen que estar esos puertos abiertos, ya que knockd escucha en la capa de enlace y ve todo el tráfico. Cuando se detecta que la secuencia de puertos ocurre, knockd abrirá el puerto del servicio que deseemos. Además, en knockd.conf se puede configurar para que pasado un cierto tiempo, se vuelva a cerrar el puerto o que para una secuencia incorrecta también se cierre. Un ejemplo de port knocking sería el siguiente:<br><br>923:tcp, 8902:udp, 5558:tcp, 1099:udp, 68543:udp<br><br>Tras realizar esta secuencia de puertos, el puerto deseado se abriría.
                                                   Si esta secuencia no cambia, cualquiera que utilice un sniffer, puede descubrirla. Es recomendable utilizar un generador pseudoaleatorio de números.</li>
                                               <br>
                                               <li>Módulos PAM. Son una suite de librerías compartidas que permiten administrar la autenticación de los usuarios. Podremos aplicar mecanismos de seguridad sin tener que aplicar los cambios y modificar cada aplicación. Las configuraciones se pueden añadir a los ficheros del directorio /etc/pam.d. En ese directorio encontramos ficheros para los diferentes servicios.</li>
                                           </ul>
                                           
                                           <br><br>
                                                                                                                                                             
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                            <footer class="panel-footer">Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero en apoyo del Dr. Jesús Mª Vegas Hernández</footer>
                        </div> 
            

                    </div>

                
            
           
           

                    <div role="tabpanel" class="tab-pane fade" id="DoS">
                        <h2>Denegación de servicio </h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="dos.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>En seguridad informática, un ataque de denegación de servicio, también llamado ataque DoS (por sus siglas en inglés, Denial of Service), es un ataque a un sistema de computadoras o red que causa que un servicio o recurso sea inaccesible a los usuarios legítimos.
                           Normalmente provoca la pérdida de la conectividad con la red por el consumo del ancho de banda de la red de la víctima o sobrecarga de los recursos computacionales del sistema atacado.</p>
                        <br>
                        <h4>TCP SYN Flood</h4>
                        <p>Es un método de denegación de servicio que afecta a hosts que corren procesos TCP. El ataque aprovecha el tiempo de espera después de recibir un segmento SYN en un puerto que está en estado de escucha. Para entender cómo funciona un ataque de este tipo, necesitamos entender cómo se establece una conexión TCP. Una conexión TCP se establece con lo que comúnmente se conoce como un "three-way handshake":</p>                        
                        <br>
                        <ul type="square">
                            <li>1º El cliente envía un paquete SYN para establecer una conexión TCP.</li>   
                            <li>2º El servidor recibe el paquete SYN, pasa a estado de SYN-RCVD y responde con un SYN+ACK.</li>       
                            <li>3º Finalmente, el cliente responde con un ACK.</li>
                        </ul>
                        <br>
                        <p>Sin embargo, si no se realiza el tercer paso, el servidor seguirá esperando un ACK en estado de SYN-RCVD. Existe la posibilidad de no responder al SYN+ACK o de hacer "spoofing" de la dirección de origen como se muestra en la siguiente figura.</p>
                        <br>
                        <p>El ataque por inundación SYN explota este comportamiento. El prósito de este ataque es enviar muchas paquetes SYN al servidor e ignorar los paquetes SYN+ACK devueltos. Esto provoca que el servidor se quede esperando por múltiples peticiones durante el tiempo configurado de esperay produce una sobrecarga en el servidor, ya que hay un número limitado de conexiones TCP concurrentes. Si el servidor llega al límite, no se podrán aceptar nuevas conexiones.</p>
                        <br>
                        <img class="center-block" src="images/SYNFlood.jpeg" alt="SYN Flood" width="37%" height="30%">
                        <br>
                   
                        <h4>UDP/ICMP Flood</h4>
                        <p>UDP, al contrario que TCP, no necesita crear una sesión entre cliente y servidor, es decir, no hay ningún handshake. ICMP es otro caso en el que no se necesita crear una sesión. Suele ser usado para mandar mensajes de error e información operacional desde los dispositivos de red. </p>
                        <br>
                        <p>Ambos protocolos no explotan ninguna vulnerabilidad. Este ataque consiste simplemente en mandar paquetes continuamente a puertos aleatorios hasta que el servidor se sobrecargue intentando procesar todas las peticiones. También se puede usar en combinación con "spoofing". </p>
                        <br>
                        <p>Cuando se envía un paquete UDP en el cuál no hay aplicaciones escuchando, como hemos visto anteriormente, el servidor tendrá que responder con numerosos paquetes ICMP. </p>
                        <br>
                        <p>En un ataque de inundación ICMP, se intercambiaran dos tipos de mensajes entre el cliente y el servidor, un ICMP Echo Request y un ICMP Echo Reply.</p>
                        <br>
                        
                        <h4>Ataque SMURF</h4>
                        <p>Un atacante elige un intermediario como amplificador. Envía una gran cantidad de paquetes ICMP a la dirección IP de broadcast de esos sitios intermediarios. La dirección sobre la que haremos "spoofing" es la de la víctima. Esto provocará que todos los dispositivos de la red manden ICMP Echo Replies a la víctima para sobrecargarla.</p>
                        <br>
                      
                        <img class="center-block" src="images/smurf.jpg" alt="SMURF" width="27%" height="40%" >
                   
                        
                        <br>
                        
                        <div class="table-responsive">          
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>Lanzamiento</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                      Para poder probar este tipo de ataques utilizaremos "hping3". Consiste en una herramienta de red capaz de enviar paquetes TCP/IP personalizados y de mostrar las réplicas del objetivo. Es útil para poder probar firewalls, escáneos de puertos, fragmentación... Lanzaremos un TCP SYN DoS mediante:
                                      <br><br>
                                      <code>$ hping3 -S --flood -V  -p 80 157.88.123.102</code>
                                  </td>                        
                                </tr>           
                              </tbody>
                            </table>
                        </div>
                        
                        <div class="table-responsive">          
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>Detección y defensa</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                      Hay muchas estrategias para la mitigación de este tipo de ataques, aunque ninguna es totalmente efectiva. Por supuesto, la mejor manera de ver estos ataques, que pueden ser identificados fácilmente, son utilizando IDS/ISP o monitorizando la red y añadiendo reglas de filtrado en el firewall, como por ejemplo evitando paquetes ICMP a nuestro servidor para evitar ICMP Flood o bloqueando una IP concreta. Podemos detectar un ataque de denegación de servicio si encontramos un gran número de peticiones cuyo origen es la misma IP en un corto período de tiempo, el tráfico que se produce es muy alto.
                                      <br><br>
                                      Es recomendable usar, proxies inversos o balanceadores de carga. El objetivo es, que aunque algún dispositivo de red o servidor se sobrecargue, se pueda seguir utilizando. Para ello también será efectivo añadir redundancia en nuestra red y usar protocolos como HSRP o RSTP para alta disponibilidad. También es importante la correcta configuración de los servicios que ofrezca el servidor.
                                      <br><br>
                                      Existen ciertas configuraciones del kernel de Linux que nos permitirá proteger nuestro servidor. Para ello modificaremos parámetros del fichero /etc/sysctl.conf, desde el cuál sirve para pasar configuraciones al kernel en tiempo de ejecución. Realizaremos estas modificaciones:
                                      <br>
                                      <ul type="square">
                                          <li>tcp_syncookies: para evitar ataques TCP SYN Flood. Cuando la cola de peticiones SYN se completa, el servidor responderá con un paquete SYN-ACK como hace normalmente, pero creando un número de secuencia codificado con la IP de origen, la IP de destino, el puerto y un timestamp. Así pues, la cola ya no será necesaria ya que podrá reconstruirse mediante el número de secuencia. Se activará esto mediante:<br><code>sysctl -w net.ipv4.tcp_syncookies=1</code></li>
                                          <li>ignore_broadcasts: para evitar ataques SMURF. Se desactivará la respuesta a las peticiones boradcast de tipo echo ICMP. Se activa:<br><code>sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1</code></li>
                                          <li>rp_filter: permite detectar el IP Spoofing comprobando que los paquetes que entran por una interfaz son alcanzables basándose en la dirección de orgien. Se activa con:<br><code>sysctl -w net.ipv4.conf.all.rp_filter=1</code></li>                                       
                                      </ul>
                                      <br><br>
                                      Análogamente, se puede seguir la misma estrategia, realizando las configuraciones correspondientes en los routers de Cisco, basándose en los mismos principios que nos hemos basado antes.
                                      <br>
                                      <ul type="square">
                                          <li>Para evitar ataques ataques TCP SYN FLOOD usaremos TCP intercept. Es utilizado para interceptar y validar las solicitudes de conexión TCP. Se establece una conexión con el cliente en nombre del servidor de destino, si tiene éxito se establece una conexión en nombre del cliente y se unen las dos conexiones. Así, se evitan los intentos de conexión de hosts inalcanzables. Se utilizarán además umbrales de tiempo de espera para detectar conexiones ilegítimas. </li>
                                          <li>Para evitar ataques SMURF, seleccionamos la interfaz del router por la que pueden llegar estos ataques y escribiremos el siguiente comando:<br><code>no ip directed-broadcast</code></li>
                                          <li>Reverse Path Forwarding para verificar que el origen de las peticiones es accesible. Evita las direcciones falsificadas, si la dirección de origen es falsa, el paquete se descarta.</li>
                                      </ul>
                                  </td>                        
                                </tr>           
                              </tbody>
                            </table>
                        </div>

                   
                        <footer class="panel-footer">©Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández</footer>
                    </div>


                    <div role="tabpanel" class="tab-pane fade" id="escaneopuertos">
                        <h2>Escaneo de puertos</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="nmap.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Nmap es una herramienta open-source cuyas  utilidades principales son el descubrimiento de redes y auditorías de seguridad. Es útil también para administradores de redes y sistemas para mantener el inventario de los dispositivos, o monitorización de servicios y actividades de los hosts.Lo interesante de esta herramienta es la tabla de puertos que nos muestra la salida. Esta tabla muestra el estado, el número de puerto, el protocolo, el nombre de servicio y el estado.El estado puede ser:</p>
                        <ul type="square">
                            <li>Open: una aplicación está escuchando en ese puerto</li>
                            <li>Filtered: un firewall, filtro  u otro obstáculo de red está bloqueando ese puerto, por tanto Nmap no puede indicarnos si está abierto o está cerrado</li>
                            <li>Unfiltered: cuando responde a Nmap, pero no puede determinar si el puerto está abierto o cerrado</li>
                            <li>Closed: no hay aplicaciones escuchando en el puerto</li>
                        </ul>
                        <br>
                        <h4>TCP Syn Scan</h4>
                        <p>Es la técnica más utilizada. Se activa con la opció -sS. Escanea miles de puertos por segundo y es relativamente discreto, ya que nunca completa las conexiones TCP. Envía un paquete SYN, como si fuera a abrir una conexión real y luego espera la respuesta. Un SYN o ACK indica que el puerto está abierto, mientras que un RST(reinicio) indica que no se escucha. Si no se ha recibido nada o se ha recibido un paquete ICMP, indica que el puerto está filtrado.</p>
                        
                        <br>
                        <h4>UDP Scan</h4>
                        <p>La mayoría de los servicios de Internet se ejecutan a través del protocolo TCP. Pero existen servicios muy importantes y vulnerables como DNS, SNMP o DHCP que utilizan el protocolo UDP. Este escaneo se activa con la opción -sU y se puede combinar con el escaneo TCP. Se envía un paquete UDP, normalmente con contenido vacío, a menos que se especifique. Si devuelve un código ICMP(tipo 3, código 3) el puerto está cerrado. Otros errores ICMP indican el puerto como filtrado. Si no se recibe nada, significa que el puerto está abierto o que se ha bloqueado la comunicación.La dificultad de este escaneo es hacerlo rápidamente, ya que los puertos abiertos o filtrados no mandan respuesta y deja a Nmap en espera.</p>
                        
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            La sintaxis de Nmap es:
                                            <br>
                                            nmap [Scan Type...] [Options] {target specification}
                                            <br><br>
                                            Lanzaremos un escaneo TCP SYN con la opción -A, que nos mostrará el SO, la versión detectada y la traceroute:
                                            <br>
                                            <code>$ nmap -sS -A 157.88.123.102</code> 
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detección y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            La única forma de evitar un escaneo de puertos es bloquear todo el tráfico que llega a la red desde el exterior. En nuestro caso, no podemos bloquear todo el tráfico, estamos ofreciendo servicios al exterior y si lo bloqueamos no podrán ser usados. En cualquier entorno de laboratorio, esto es una situación que no se va a dar.
                                            Por lo tanto, estamos expuestos a recibir constantemente escaneos de puertos. No nos tendremos que centrar en evitar estos, nos centraremos en proteger el acceso a los servicios.
                                            <br><br>
                                            Existe la posibilidad de monitorizar continuamente el estado de la red y tener un IDS para detectar este tipo de ataques. Cuando observemos actividad malicioso y continuada por parte de una o varias IPs, podremos bloquear esta IP en el firewall y evitar que puedan continuar haciéndolo.
                                            <br><br>
                                            Al lanzar el ataque se puede observar en el estado de la red un pico de peticiones que provienen del mismo origen. En este tipo de ataques se observará que las peticiones se realizarán a múltiples puertos, en vez de a un puerto concreto, como puede ocurrir en un ataque de fuerza bruta. Es una distribución uniforme y no se ha dirigido a ningún puerto en concreto. Podremos analizar los logs para ver que puertos ha detectado como abiertos. Para ello, nos fijaremos en los flags de los paquetes TCP. Como hemos visto en la descripción del ataque, según el tipo de flag visto en los logs, podremos detectar si un puerto está abierto, cerrado, filtrado o sin filtrar.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>    
                       
                        <footer class="panel-footer">©Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández</footer>
                    </div>
                    
                    <div role="tabpanel" class="tab-pane fade" id="spoofing">
                        <h2>Spoofing</h2>
                        <br>
                        <h4>Man In The Middle</h4>
                        <p>El atacante se situará en el medio de una comunicación entre cliente y servidor. Por lo tanto, toda comunicación entre ambos extremos será capturada por el atacante. Una vez situado en el medio, podrá llevar a cabo multitud de ataques. </p>
                        <br>
                        <h4>MAC Flooding</h4>                       
                        <p>Como ya sabemos, ARP es un protocolo de la capa de enlace. Su propósito general es resolver una IP en una dirección MAC. Un switch dispone de una memoria interna, conocida como CAM (Content-Adressable Memory) donde asigna puertos a direcciones MAC. Cuando llega una trama a un switch y se desconoce el destino, porque es la primera vez que llega, o ha expirado, se enviará por todos los puertos de la VLAN excepto por el que fue recibido. Gracias a esto podrá enviar el paquete por un puerto único. </p>
                        <br>
                        <p>La idea de este ataque consiste en envíar una gran cantidad de réplicas de ARP para sobrecargarlo, llenando la tabla CAM del switch de asignaciones , y que pase a modo hub. Esto quiere decir que todo el tráfico que le llegue, lo mandará a todos los hosts de la red. Un atacante podría ahora escuchar todo el tráfico de la red mediante un sniffer.</p>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            LLevaremos a cabo un ataque MITM mediante ARP Spoofing dentro de nuestra red local. Los equipos involucrados serán de la VLAN 30, es decir los de la subred 192.168.30.0/24. Estas serán las IPs de los equipos involucrados:
                                            <ul type="square">
                                                <li>Atacante: 192.168.30.10 </li>
                                                <li>Víctima: 192.168.30.20</li>
                                                <li>Default Gateway: 192.168.30.1</li>
                                            </ul>
                                            <br>                                                                       
                                            Para realizar el spoofing usaremos la herramienta Arpspoof del paquete Dsniff. Inundará la red con tramas ARP para que todas las maquinas actualicen su tabla. El objetivo es que la víctima en vez de enviar los paquetes al Default Gateway, los envíe a la máquina del atacante. Para ello cambiaremos la dirección MAC asociada a la IP del Default Gateway por la dirección MAC del atacante.   
                                            <br><br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.20 192.168.30.1</code>
                                            <br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.1 192.168.30.20</code>
                                            <br><br>
                                            Una vez hecho el envenenamiento de su tabla ARP, podremos observar que ahora cada vez que la víctima envía los datos, pasarán por el atacante. Si consultamos la tabla ARP de la víctima observamos que ambas direcciones tienen la misma dirección MAC.
                                            
                                            
                                            <pre>? (192.168.30.1) at 00:1c:42:60:bc:a0  [ether] on eth0
? (192.168.30.10) at 00:1c:42:60:bc:a0 [ether] on eth0</pre>
                                            
                                            Ahora podremos realizar otro tipo de ataques como es el de denegación de servicio, DNS spoofing...La herramienta que se suele usar para realizar el ARP spoofing y posteriormente llevar a cabo los otros ataces es Ettercap. 
                                            <br><br>
                                            No podremos lanzar el ataque desde esta interfaz web, pues es un ataque que se realiza desde el interior y solo monitorizamos el tráfico que proviene del exterior. Aún así resulta interesante ananalizar el tráfico que se genera.
                                            <br><br>
                                            <img class="center-block" src="images/arpspoof.png" alt="Spoofing" width="100%" height="60%">
                                            <br>
                                            De esta forma, la subred se inunda con paquetes ARP falsificados en los que la dirección MAC del default gateway será la del atacante y así todo el tráfico de la subred pasará por este.
                                            <br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detección y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>  
                                            La mejor forma de detectar este tipo de ataques es mediante un IDS o un IPS. También es conveniente revisar las tablas ARP para ver si a dos IPs distintas le corresponde la misma dirección MAC y así detectarlo.
                                            <br><br>
                                            Existen mecanismos de autenticación para prevenirlo y así tener a un usuario siempre identificado. También puede ser usado ARP estático, de tal forma que sea imposible ninguna alteración, pero no es recomendable para redes grandes. Sin duda, la técnica más usada en empresas u organizaciones con redes grandes es usar una VPN.
                                            <br><br>
                                            En algunos switches modernos de Cisco también existe el DAI (Dynamic ARP Inspection) para prevenir ataques relacionados con el protocolo ARP. Al activarlo, intercepta todas las peticiones y respuestas ARP y verifica la autenticidad antes de actualizar la tabla o de reenvíar los paquetes a los destinos. Nosotros no podremos implementar este método ya que el que hemos utilizado se trata de uno más antiguo, sin esta característica.
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                           
                        </div> 
            
                        <footer class="panel-footer">©Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández</footer>
                    </div>
            </div>
       
        
        </div>
        
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">About</h4>
                </div>
                <div class="modal-body">
                  <p>Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jesús Mª Vegas Hernández.</p>
                  <br>
                  <p>Esta interfaz web pretenda ilustrar de una forma didáctica las principales vulnerabilidades presentes en una infraestructura red. Para ello se incluye una descripción y varias soluciones para poder detectar y mitigar estos ataques. </p>
                  <br>
                  <p>Se podrán lanzar estos ataques desde la interfaz web para analizar el tráfico que se genera y su repercusión sobre la red 157.88.123.102.</p>
                  <br>
                  <p>©Universidad de Valladolid</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
              </div>

        </div>
  </div>
          
  </body>
</html>
