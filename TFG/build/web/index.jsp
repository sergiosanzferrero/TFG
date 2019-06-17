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
                    <li role="presentation"><a href="#DoS" data-toggle="tab" role="tab"> Denegaci�n de servicio</a></li>
                    <li role="presentation"><a href="#escaneopuertos" data-toggle="tab" role="tab">Escaneo de puertos</a></li>
                    <li role="presentation"><a href="#spoofing" data-toggle="tab" role="tab">Spoofing</a></li>
                </ul>
            
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="estadoRed">
                        <h2>Estado de la red</h2>
                        <iframe src="http://157.88.123.102:80/app/kibana#/dashboard/ca480720-2fdf-11e7-9d02-3f49bde5c1d5?embed=true&_g()"height="800" width="100%"></iframe>
                        <br>
                        <footer class="panel-footer">�Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez</footer>
                        
                    </div>
                    
                    <div role="tabpanel" class="tab-pane fade" id="vulnerabilidades">
                        <h2>Escaneo de vulnerabilidades</h2>
                        <br>
                        <p>Existen herramientas muy similares como OpenVas o Nessus que nos permiten hacer un escaneo automatizado de vulnerabilidades. En este caso nos centraremos en Nessus, aunque ambos son muy parecidos de utilizar. </p>
                        <br>                      
                        <p>Consideraremos este tipo de herramientas como una primera aproximaci�n a explotar un sistema o a auditar nuestra propia seguridad. Aunque en el resultado de este escaneo no se detecten vulnerabilidades, no quiere decir que no existan. Deberemos realizar an�lisis m�s complejos. </p>
                        <br>
                        <p>Los par�metros de configuraci�n de un escaneo Nessus son los siguientes </p>      
                        <p> 
                            <ul type="square">
                                <li>Basic: para especificar aspectos b�sicos organizativos, incluyendo nombre y descripci�n del escaneo. </li>
                                <li>Discovery: para establecer el descubrimiento y la exploraci�n de puertos, incluyendo los rangos y los m�todos. </li>
                                <li>Assessment: para identificar malware, vulnerabilidades de fuerza bruta, y la susceptibilidad de un sistema web. </li>
                                <li>Report: el procesamiento y la salida del escaneo. </li>
                                <li>Advanced: otros par�metros para hacer m�s eficiente un escaneo. </li>
                            </ul>
                        </p>
                        <br>
                        <h4>Metasploit</h4>                    
                        <p> Metasploit es un software gratuito y open-source que puede ser usado para automatizar tareas complejas. MSFConsole es la interfaz m�s popular de este framework y ser� con la que interactuemos para lanzar exploits aprovechando las vulnerabilidades. </p>
                        <br>
                        <p> Tras haber usado Nessus para realizar un escaneo de vulnerabilidades, Mestasploit nos ofrece la posibilidad de lanzar exploits para explotar esas vulnerabilidades.  El problema de lanzar todos estos exploits es que se generar� mucho ruido y se podr� detectar f�cilmente. Por ello, este tipo de ataques se suelen realizar cuando se dispone de poco tiempo o simplemente se quiere auditar la seguridad.</p>
                        
                        
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
                                            Para lanzar el escaneo, lo primero que necesitaremos ser� disponer del software, el cu�l se puede descargar desde la <a href="https://www.tenable.com/downloads/nessus"> p�gina oficial</a>.
                                            <br><br>  
                                            Una vez instalado, seleccionaremos los plugings que deseemos. En este apartado tendremos una lista de vulnerabilidades, podremos habilitar familias de plugins o plugins individuales para llevar a cabo. 
                                           <br><br>                                       
                                            Una vez configurado todos los par�metros del escaneo, procedemos a definir cu�l ser� nuestro objetivo, en este caso la IP 157.88.123.102 y a lanzarlo. Cuando haya finalizado el escaneo, podremos encontrar en reports las principales vulnerabilidades del sistema objetivo que hemos incluido. Podremos exportarlo en varios formatos. Si estamos realizando un test de penetraci�n, es recomendable exportarlo en formato .nessus para despu�s poder importarlo, por ejemplo, en Metasploit.
                                            <br><br> 
                                            Para importar los resultados del escaneo a Metasploit usaremos  MSFConsole, que es la interfaz m�s popular de Metasploit y escribiremos:
                                            <br><br>                                            
                                            <code>msf > db_import ruta/.nessus #importa los resultados de Nessus<br>                                         
                                                msf > db_autopwn -x -p #lanzamiento de los exploits<br>                                         
                                                msf > sessions -l #consultar sesiones obtenidas<br></code>
                                            
                                            <br><br>
                                            De esta forma se lanzar�n todos los exploits disponibles para explotar las vulnerabilidades encontradas, aunque esto generar� mucho ruido. Si deseamos usar un exploit para explotar una vulnerabilidad concreta, a continuaci�n mostraremos un ejemplo de como lanzarlo:
                                            <br><br>
                                            <code>msf > search ssh #b�squeda de un exploit<br> 
                                                msf > use auxiliary/scanner/ssh/ssh_login #selecci�n de un exploit<br> 
                                                msf auxiliary(ssh_login) > show options #muestra los par�metros<br> 
                                                msf auxiliary(ssh_login)> set RHOSTS 157.88.123.102 #establecimiento de par�metros<br> 
                                                msf auxiliary(ssh_login)> set USERPASS_FILE /usr/share/metasploit-framework/data/wordlists/root_userpass.txt # establecimiento de par�metros<br>                                               
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
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                            Podremos acceder a cada una de las vulnerabilidades, clasificadas seg�n el impacto que puedan tener en el sistema. Se incluye una descripci�n, referencias a otros documentos de inter�s y soluciones para mitigarlas. 
                                            <br><br>
                                            Es recomendable lanzar este tipo de escaneos cuando se haya dise�ado y levantado una nueva red. Esto servir� tanto para ataque como para conseguir informaci�n de las vulnerabilidades de nuestra red y poder protegernos ante ellas.   
                                            <br><br>
                                            Todo el tr�fico generado por este tipo de escaneos tiene su origen en el puerto 80. Esto es porque herramientas como Nessus u Openvas son usadas mediante la interfaz web. No quiere decir que siempre sea as�, si lo lanz�semos mediante Metasploit el origen de los puertos no ser�a el 80. A�n as� es un indicio de que se trata de un escaneo de vulnerabilidades. Las peticiones que se env�an son a m�ltiples puertos, aunque los puertos que se encuentran abiertos y presentan vulnerabilidades recibir�n m�s tr�fico que otros.
                                                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                            <footer class="panel-footer">�Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez</footer>
                        </div> 
            

                    </div>
                                       

               
                    <div role="tabpanel" class="tab-pane fade" id="fuerzaBruta">
                        <h2>Fuerza bruta</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="fuerzabruta.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Un ataque de fuerza bruta consiste en que un atacante configure valores predeterminados, realice solicitudes a un servidor, utilizando esos valores y finalmente analice la respuesta. Hydra junto con Medusa son las dos herramientas que m�s se utilizan para realizar este tipo de ataques, ambos son crackeadores de contrase�as. Para realizar este ataque se usar� un diccionario de contrase�as que se generar� mediante la herramienta Crunch.</p>
                        <br>
                        <p>No solo existen diccionarios de contrase�as, tambi�n podremos encontrar diccionarios de usuarios o puertos. Cuanto menos espec�ficos seamos, m�s tiempo llevar� el ataque e incluso se podr�a no llegar a completar en un per�odo de tiempo aceptable.</p> 
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
                                            Para poder realizar un ataque de estas caracter�sticas, lo primero que supondremos es el formato de la contrase�a. Existen multitud de diccionarios con las contrase�as por defecto de muchos sistemas y las m�s usadas por la gente, que en ciertos casos nos puede ahorrar mucho tiempo a la hora de llevar este tipo de ataques. 
                                            <br> <br>
                                            No solo existen diccionarios de contrase�as, tambi�n podremos encontrar diccionarios de usuarios o puertos. Cuanto menos espec�ficos seamos, m�s tiempo llevar� el ataque e incluso se podr�a no llegar a completar en un per�odo de tiempo aceptable.
                                            <br> <br>
                                            Mediante la herramienta Crunch generaremos diccionarios contemplando todas las posibilidades. Si no usa una contrase�a muy robusta, ser� efectivo en un tiempo m�s o menos razonable.
                                            <br> <br>
                                            Una vez que tenemos el diccionario de posibles contrase�as, podemos proceder a lanzar el ataque de fuerza bruta hacia un servicio. Supondremos tambi�n que el usuario ser� root, aunque tambi�n se podr�a hacer un diccionario de usuarios. Para lanzar el ataque, usaremos la herramienta Hydra.
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
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                           Lo primero que debemos tener en cuenta es que estos ataques se realizan mediante diccionarios de usuarios y contrase�as. Muchos de estos diccionarios suelen ser muy completos y se incluyen contrase�as por defecto de dispositivos y contrase�as habituales.
                                           <br><br>
                                           Por lo tanto un primer paso es tener una contrase�a que no sea tan d�bil ante estos ataques. Es recomendable usar contrase�as largas, con letras, n�meros y otros caracteres. Llevar a cabo un ataque por fuerza bruta con una contrase�a as�, llevar�a varios d�as y ser�a f�cilmente detectable.
                                           <br><br>
                                           Otra de las medidas que ayudan a mitigar este tipo de ataques, es cambiar el puerto defecto. As� pues, ciertos servicios como SSH, que por defecto corren en el 22, son usualmente atacados por ataques automatizados. Aunque con un escaneo de puertos, se podr�a ver cu�les son los puertos que est�n abiertos y los servicios que corren, muchos de estos ataques son ejecutados mediante scripts, que a menos que sean dirigidos, no utilizar�n otro tipo de herramientas. Cambiar el puerto, por lo tanto, aumentar�a el tiempo para que tuviera �xito el ataque.
                                           <br><br>
                                           Al igual que con el resto de ataques, los IDS/IPS nos ayudar�n en la detecci�n de estos ataques. La monitorizaci�n de la red nos permitir� identificar los ataques, viendo picos donde se registran m�s peticiones a un puerto determinado. Al contrario que en un escaneo de puertos, se puede observar que el ataque va dirigido a un puerto en concreto y que muchas de las peticiones van dirigidas.
                                           <br><br>
                                           Posibilidades para mitigar este tipo de ataques:
                                           <br><br>
                                           <ul type="square">
                                               <li>Edici�n del archivo de configuraci�n para el demonio /etc/ssh/sshd_config:
                                                   <ul>
                                                       <li>No permitir el acceso mediante root. Esto nos permitir� que cuando usen un diccionario para los usuarios, no puedan usar root. Para ello escribiremos en el fichero: <code>PERMITROOTLOGIN NO</code></li>
                                                       <li>Usar versiones seguras de los servicios. En el caso de SSH, la versi�n 1 del protocolo tiene muchas vulnerabilidades conocidas, por lo que debemos usar la 2. Escribimos en el fichero: <code>PROTOCOL 2</code></li>
                                                       <li>Modificar el n�mero de segundos que la pantalla de login est� activa, para que pasado el tiempo se cierre. Escribimos en el fichero: <code>LOGINGRACETIME 30</code></li>
                                                       <li>Modificar el n�mero de intentos m�ximos que podemos fallar el login, despu�s de estos intentos fallidos se cerrar� la conexi�n. Escribimos en el fichero: <code>MAXAUTHTRIES 3</code></li>
                                                   </ul>
                                                     
                                                   
                                               </li> 
                                               <br>
                                               <li>Desactivar contrase�as, uso de RSA, clave p�blica y privada.</li>
                                               <br>
                                               <li>Monitorizaci�n y bloqueo de IP mediante ACL</li>
                                               <br>
                                               <li>Portknocking. Consiste en esconder un puerto hasta que una secuencia de puertos ocurra. En Linux, el software m�s utilizado es knockd. Un servidor knockd escucha todo el tr�fico que pasa por una interfaz Ethernet, buscando secuencias de puertos <br><br>El cliente enviar� paquetes UDP o TCP a unos puertos espec�ficos del servidor. No necesariamente tienen que estar esos puertos abiertos, ya que knockd escucha en la capa de enlace y ve todo el tr�fico. Cuando se detecta que la secuencia de puertos ocurre, knockd abrir� el puerto del servicio que deseemos. Adem�s, en knockd.conf se puede configurar para que pasado un cierto tiempo, se vuelva a cerrar el puerto o que para una secuencia incorrecta tambi�n se cierre. Un ejemplo de port knocking ser�a el siguiente:<br><br>923:tcp, 8902:udp, 5558:tcp, 1099:udp, 68543:udp<br><br>Tras realizar esta secuencia de puertos, el puerto deseado se abrir�a.
                                                   Si esta secuencia no cambia, cualquiera que utilice un sniffer, puede descubrirla. Es recomendable utilizar un generador pseudoaleatorio de n�meros.</li>
                                               <br>
                                               <li>M�dulos PAM. Son una suite de librer�as compartidas que permiten administrar la autenticaci�n de los usuarios. Podremos aplicar mecanismos de seguridad sin tener que aplicar los cambios y modificar cada aplicaci�n. Las configuraciones se pueden a�adir a los ficheros del directorio /etc/pam.d. En ese directorio encontramos ficheros para los diferentes servicios.</li>
                                           </ul>
                                           
                                           <br><br>
                                                                                                                                                             
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                            <footer class="panel-footer">Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero en apoyo del Dr. Jes�s M� Vegas Hern�ndez</footer>
                        </div> 
            

                    </div>

                
            
           
           

                    <div role="tabpanel" class="tab-pane fade" id="DoS">
                        <h2>Denegaci�n de servicio </h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="dos.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>En seguridad inform�tica, un ataque de denegaci�n de servicio, tambi�n llamado ataque DoS (por sus siglas en ingl�s, Denial of Service), es un ataque a un sistema de computadoras o red que causa que un servicio o recurso sea inaccesible a los usuarios leg�timos.
                           Normalmente provoca la p�rdida de la conectividad con la red por el consumo del ancho de banda de la red de la v�ctima o sobrecarga de los recursos computacionales del sistema atacado.</p>
                        <br>
                        <h4>TCP SYN Flood</h4>
                        <p>Es un m�todo de denegaci�n de servicio que afecta a hosts que corren procesos TCP. El ataque aprovecha el tiempo de espera despu�s de recibir un segmento SYN en un puerto que est� en estado de escucha. Para entender c�mo funciona un ataque de este tipo, necesitamos entender c�mo se establece una conexi�n TCP. Una conexi�n TCP se establece con lo que com�nmente se conoce como un "three-way handshake":</p>                        
                        <br>
                        <ul type="square">
                            <li>1� El cliente env�a un paquete SYN para establecer una conexi�n TCP.</li>   
                            <li>2� El servidor recibe el paquete SYN, pasa a estado de SYN-RCVD y responde con un SYN+ACK.</li>       
                            <li>3� Finalmente, el cliente responde con un ACK.</li>
                        </ul>
                        <br>
                        <p>Sin embargo, si no se realiza el tercer paso, el servidor seguir� esperando un ACK en estado de SYN-RCVD. Existe la posibilidad de no responder al SYN+ACK o de hacer "spoofing" de la direcci�n de origen como se muestra en la siguiente figura.</p>
                        <br>
                        <p>El ataque por inundaci�n SYN explota este comportamiento. El pr�sito de este ataque es enviar muchas paquetes SYN al servidor e ignorar los paquetes SYN+ACK devueltos. Esto provoca que el servidor se quede esperando por m�ltiples peticiones durante el tiempo configurado de esperay produce una sobrecarga en el servidor, ya que hay un n�mero limitado de conexiones TCP concurrentes. Si el servidor llega al l�mite, no se podr�n aceptar nuevas conexiones.</p>
                        <br>
                        <img class="center-block" src="images/SYNFlood.jpeg" alt="SYN Flood" width="37%" height="30%">
                        <br>
                   
                        <h4>UDP/ICMP Flood</h4>
                        <p>UDP, al contrario que TCP, no necesita crear una sesi�n entre cliente y servidor, es decir, no hay ning�n handshake. ICMP es otro caso en el que no se necesita crear una sesi�n. Suele ser usado para mandar mensajes de error e informaci�n operacional desde los dispositivos de red. </p>
                        <br>
                        <p>Ambos protocolos no explotan ninguna vulnerabilidad. Este ataque consiste simplemente en mandar paquetes continuamente a puertos aleatorios hasta que el servidor se sobrecargue intentando procesar todas las peticiones. Tambi�n se puede usar en combinaci�n con "spoofing". </p>
                        <br>
                        <p>Cuando se env�a un paquete UDP en el cu�l no hay aplicaciones escuchando, como hemos visto anteriormente, el servidor tendr� que responder con numerosos paquetes ICMP. </p>
                        <br>
                        <p>En un ataque de inundaci�n ICMP, se intercambiaran dos tipos de mensajes entre el cliente y el servidor, un ICMP Echo Request y un ICMP Echo Reply.</p>
                        <br>
                        
                        <h4>Ataque SMURF</h4>
                        <p>Un atacante elige un intermediario como amplificador. Env�a una gran cantidad de paquetes ICMP a la direcci�n IP de broadcast de esos sitios intermediarios. La direcci�n sobre la que haremos "spoofing" es la de la v�ctima. Esto provocar� que todos los dispositivos de la red manden ICMP Echo Replies a la v�ctima para sobrecargarla.</p>
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
                                      Para poder probar este tipo de ataques utilizaremos "hping3". Consiste en una herramienta de red capaz de enviar paquetes TCP/IP personalizados y de mostrar las r�plicas del objetivo. Es �til para poder probar firewalls, esc�neos de puertos, fragmentaci�n... Lanzaremos un TCP SYN DoS mediante:
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
                                  <th>Detecci�n y defensa</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                      Hay muchas estrategias para la mitigaci�n de este tipo de ataques, aunque ninguna es totalmente efectiva. Por supuesto, la mejor manera de ver estos ataques, que pueden ser identificados f�cilmente, son utilizando IDS/ISP o monitorizando la red y a�adiendo reglas de filtrado en el firewall, como por ejemplo evitando paquetes ICMP a nuestro servidor para evitar ICMP Flood o bloqueando una IP concreta. Podemos detectar un ataque de denegaci�n de servicio si encontramos un gran n�mero de peticiones cuyo origen es la misma IP en un corto per�odo de tiempo, el tr�fico que se produce es muy alto.
                                      <br><br>
                                      Es recomendable usar, proxies inversos o balanceadores de carga. El objetivo es, que aunque alg�n dispositivo de red o servidor se sobrecargue, se pueda seguir utilizando. Para ello tambi�n ser� efectivo a�adir redundancia en nuestra red y usar protocolos como HSRP o RSTP para alta disponibilidad. Tambi�n es importante la correcta configuraci�n de los servicios que ofrezca el servidor.
                                      <br><br>
                                      Existen ciertas configuraciones del kernel de Linux que nos permitir� proteger nuestro servidor. Para ello modificaremos par�metros del fichero /etc/sysctl.conf, desde el cu�l sirve para pasar configuraciones al kernel en tiempo de ejecuci�n. Realizaremos estas modificaciones:
                                      <br>
                                      <ul type="square">
                                          <li>tcp_syncookies: para evitar ataques TCP SYN Flood. Cuando la cola de peticiones SYN se completa, el servidor responder� con un paquete SYN-ACK como hace normalmente, pero creando un n�mero de secuencia codificado con la IP de origen, la IP de destino, el puerto y un timestamp. As� pues, la cola ya no ser� necesaria ya que podr� reconstruirse mediante el n�mero de secuencia. Se activar� esto mediante:<br><code>sysctl -w net.ipv4.tcp_syncookies=1</code></li>
                                          <li>ignore_broadcasts: para evitar ataques SMURF. Se desactivar� la respuesta a las peticiones boradcast de tipo echo ICMP. Se activa:<br><code>sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1</code></li>
                                          <li>rp_filter: permite detectar el IP Spoofing comprobando que los paquetes que entran por una interfaz son alcanzables bas�ndose en la direcci�n de orgien. Se activa con:<br><code>sysctl -w net.ipv4.conf.all.rp_filter=1</code></li>                                       
                                      </ul>
                                      <br><br>
                                      An�logamente, se puede seguir la misma estrategia, realizando las configuraciones correspondientes en los routers de Cisco, bas�ndose en los mismos principios que nos hemos basado antes.
                                      <br>
                                      <ul type="square">
                                          <li>Para evitar ataques ataques TCP SYN FLOOD usaremos TCP intercept. Es utilizado para interceptar y validar las solicitudes de conexi�n TCP. Se establece una conexi�n con el cliente en nombre del servidor de destino, si tiene �xito se establece una conexi�n en nombre del cliente y se unen las dos conexiones. As�, se evitan los intentos de conexi�n de hosts inalcanzables. Se utilizar�n adem�s umbrales de tiempo de espera para detectar conexiones ileg�timas. </li>
                                          <li>Para evitar ataques SMURF, seleccionamos la interfaz del router por la que pueden llegar estos ataques y escribiremos el siguiente comando:<br><code>no ip directed-broadcast</code></li>
                                          <li>Reverse Path Forwarding para verificar que el origen de las peticiones es accesible. Evita las direcciones falsificadas, si la direcci�n de origen es falsa, el paquete se descarta.</li>
                                      </ul>
                                  </td>                        
                                </tr>           
                              </tbody>
                            </table>
                        </div>

                   
                        <footer class="panel-footer">�Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>


                    <div role="tabpanel" class="tab-pane fade" id="escaneopuertos">
                        <h2>Escaneo de puertos</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="nmap.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Nmap es una herramienta open-source cuyas  utilidades principales son el descubrimiento de redes y auditor�as de seguridad. Es �til tambi�n para administradores de redes y sistemas para mantener el inventario de los dispositivos, o monitorizaci�n de servicios y actividades de los hosts.Lo interesante de esta herramienta es la tabla de puertos que nos muestra la salida. Esta tabla muestra el estado, el n�mero de puerto, el protocolo, el nombre de servicio y el estado.El estado puede ser:</p>
                        <ul type="square">
                            <li>Open: una aplicaci�n est� escuchando en ese puerto</li>
                            <li>Filtered: un firewall, filtro  u otro obst�culo de red est� bloqueando ese puerto, por tanto Nmap no puede indicarnos si est� abierto o est� cerrado</li>
                            <li>Unfiltered: cuando responde a Nmap, pero no puede determinar si el puerto est� abierto o cerrado</li>
                            <li>Closed: no hay aplicaciones escuchando en el puerto</li>
                        </ul>
                        <br>
                        <h4>TCP Syn Scan</h4>
                        <p>Es la t�cnica m�s utilizada. Se activa con la opci� -sS. Escanea miles de puertos por segundo y es relativamente discreto, ya que nunca completa las conexiones TCP. Env�a un paquete SYN, como si fuera a abrir una conexi�n real y luego espera la respuesta. Un SYN o ACK indica que el puerto est� abierto, mientras que un RST(reinicio) indica que no se escucha. Si no se ha recibido nada o se ha recibido un paquete ICMP, indica que el puerto est� filtrado.</p>
                        
                        <br>
                        <h4>UDP Scan</h4>
                        <p>La mayor�a de los servicios de Internet se ejecutan a trav�s del protocolo TCP. Pero existen servicios muy importantes y vulnerables como DNS, SNMP o DHCP que utilizan el protocolo UDP. Este escaneo se activa con la opci�n -sU y se puede combinar con el escaneo TCP. Se env�a un paquete UDP, normalmente con contenido vac�o, a menos que se especifique. Si devuelve un c�digo ICMP(tipo 3, c�digo 3) el puerto est� cerrado. Otros errores ICMP indican el puerto como filtrado. Si no se recibe nada, significa que el puerto est� abierto o que se ha bloqueado la comunicaci�n.La dificultad de este escaneo es hacerlo r�pidamente, ya que los puertos abiertos o filtrados no mandan respuesta y deja a Nmap en espera.</p>
                        
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
                                            Lanzaremos un escaneo TCP SYN con la opci�n -A, que nos mostrar� el SO, la versi�n detectada y la traceroute:
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
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            La �nica forma de evitar un escaneo de puertos es bloquear todo el tr�fico que llega a la red desde el exterior. En nuestro caso, no podemos bloquear todo el tr�fico, estamos ofreciendo servicios al exterior y si lo bloqueamos no podr�n ser usados. En cualquier entorno de laboratorio, esto es una situaci�n que no se va a dar.
                                            Por lo tanto, estamos expuestos a recibir constantemente escaneos de puertos. No nos tendremos que centrar en evitar estos, nos centraremos en proteger el acceso a los servicios.
                                            <br><br>
                                            Existe la posibilidad de monitorizar continuamente el estado de la red y tener un IDS para detectar este tipo de ataques. Cuando observemos actividad malicioso y continuada por parte de una o varias IPs, podremos bloquear esta IP en el firewall y evitar que puedan continuar haci�ndolo.
                                            <br><br>
                                            Al lanzar el ataque se puede observar en el estado de la red un pico de peticiones que provienen del mismo origen. En este tipo de ataques se observar� que las peticiones se realizar�n a m�ltiples puertos, en vez de a un puerto concreto, como puede ocurrir en un ataque de fuerza bruta. Es una distribuci�n uniforme y no se ha dirigido a ning�n puerto en concreto. Podremos analizar los logs para ver que puertos ha detectado como abiertos. Para ello, nos fijaremos en los flags de los paquetes TCP. Como hemos visto en la descripci�n del ataque, seg�n el tipo de flag visto en los logs, podremos detectar si un puerto est� abierto, cerrado, filtrado o sin filtrar.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>    
                       
                        <footer class="panel-footer">�Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    <div role="tabpanel" class="tab-pane fade" id="spoofing">
                        <h2>Spoofing</h2>
                        <br>
                        <h4>Man In The Middle</h4>
                        <p>El atacante se situar� en el medio de una comunicaci�n entre cliente y servidor. Por lo tanto, toda comunicaci�n entre ambos extremos ser� capturada por el atacante. Una vez situado en el medio, podr� llevar a cabo multitud de ataques. </p>
                        <br>
                        <h4>MAC Flooding</h4>                       
                        <p>Como ya sabemos, ARP es un protocolo de la capa de enlace. Su prop�sito general es resolver una IP en una direcci�n MAC. Un switch dispone de una memoria interna, conocida como CAM (Content-Adressable Memory) donde asigna puertos a direcciones MAC. Cuando llega una trama a un switch y se desconoce el destino, porque es la primera vez que llega, o ha expirado, se enviar� por todos los puertos de la VLAN excepto por el que fue recibido. Gracias a esto podr� enviar el paquete por un puerto �nico. </p>
                        <br>
                        <p>La idea de este ataque consiste en env�ar una gran cantidad de r�plicas de ARP para sobrecargarlo, llenando la tabla CAM del switch de asignaciones , y que pase a modo hub. Esto quiere decir que todo el tr�fico que le llegue, lo mandar� a todos los hosts de la red. Un atacante podr�a ahora escuchar todo el tr�fico de la red mediante un sniffer.</p>
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
                                            LLevaremos a cabo un ataque MITM mediante ARP Spoofing dentro de nuestra red local. Los equipos involucrados ser�n de la VLAN 30, es decir los de la subred 192.168.30.0/24. Estas ser�n las IPs de los equipos involucrados:
                                            <ul type="square">
                                                <li>Atacante: 192.168.30.10 </li>
                                                <li>V�ctima: 192.168.30.20</li>
                                                <li>Default Gateway: 192.168.30.1</li>
                                            </ul>
                                            <br>                                                                       
                                            Para realizar el spoofing usaremos la herramienta Arpspoof del paquete Dsniff. Inundar� la red con tramas ARP para que todas las maquinas actualicen su tabla. El objetivo es que la v�ctima en vez de enviar los paquetes al Default Gateway, los env�e a la m�quina del atacante. Para ello cambiaremos la direcci�n MAC asociada a la IP del Default Gateway por la direcci�n MAC del atacante.   
                                            <br><br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.20 192.168.30.1</code>
                                            <br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.1 192.168.30.20</code>
                                            <br><br>
                                            Una vez hecho el envenenamiento de su tabla ARP, podremos observar que ahora cada vez que la v�ctima env�a los datos, pasar�n por el atacante. Si consultamos la tabla ARP de la v�ctima observamos que ambas direcciones tienen la misma direcci�n MAC.
                                            
                                            
                                            <pre>? (192.168.30.1) at 00:1c:42:60:bc:a0  [ether] on eth0
? (192.168.30.10) at 00:1c:42:60:bc:a0 [ether] on eth0</pre>
                                            
                                            Ahora podremos realizar otro tipo de ataques como es el de denegaci�n de servicio, DNS spoofing...La herramienta que se suele usar para realizar el ARP spoofing y posteriormente llevar a cabo los otros ataces es Ettercap. 
                                            <br><br>
                                            No podremos lanzar el ataque desde esta interfaz web, pues es un ataque que se realiza desde el interior y solo monitorizamos el tr�fico que proviene del exterior. A�n as� resulta interesante ananalizar el tr�fico que se genera.
                                            <br><br>
                                            <img class="center-block" src="images/arpspoof.png" alt="Spoofing" width="100%" height="60%">
                                            <br>
                                            De esta forma, la subred se inunda con paquetes ARP falsificados en los que la direcci�n MAC del default gateway ser� la del atacante y as� todo el tr�fico de la subred pasar� por este.
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
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>  
                                            La mejor forma de detectar este tipo de ataques es mediante un IDS o un IPS. Tambi�n es conveniente revisar las tablas ARP para ver si a dos IPs distintas le corresponde la misma direcci�n MAC y as� detectarlo.
                                            <br><br>
                                            Existen mecanismos de autenticaci�n para prevenirlo y as� tener a un usuario siempre identificado. Tambi�n puede ser usado ARP est�tico, de tal forma que sea imposible ninguna alteraci�n, pero no es recomendable para redes grandes. Sin duda, la t�cnica m�s usada en empresas u organizaciones con redes grandes es usar una VPN.
                                            <br><br>
                                            En algunos switches modernos de Cisco tambi�n existe el DAI (Dynamic ARP Inspection) para prevenir ataques relacionados con el protocolo ARP. Al activarlo, intercepta todas las peticiones y respuestas ARP y verifica la autenticidad antes de actualizar la tabla o de reenv�ar los paquetes a los destinos. Nosotros no podremos implementar este m�todo ya que el que hemos utilizado se trata de uno m�s antiguo, sin esta caracter�stica.
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                           
                        </div> 
            
                        <footer class="panel-footer">�Universidad de Valladolid. Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez</footer>
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
                  <p>Trabajo de fin de grado realizado por D. Sergio Sanz Ferrero y Dr. Jes�s M� Vegas Hern�ndez.</p>
                  <br>
                  <p>Esta interfaz web pretenda ilustrar de una forma did�ctica las principales vulnerabilidades presentes en una infraestructura red. Para ello se incluye una descripci�n y varias soluciones para poder detectar y mitigar estos ataques. </p>
                  <br>
                  <p>Se podr�n lanzar estos ataques desde la interfaz web para analizar el tr�fico que se genera y su repercusi�n sobre la red 157.88.123.102.</p>
                  <br>
                  <p>�Universidad de Valladolid</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
              </div>

        </div>
  </div>
          
  </body>
</html>
