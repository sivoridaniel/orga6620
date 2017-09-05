sudo ifconfig lo:0 172.20.0.1
"$GX_EMUL_HOME"/gxemul -e 3max -d "$GX_EMUL_HOME"/netbsd-pmax.img

#Una vez iniciado el emulador crear el tunel ssh ejecutando:
#ssh -R 2222:127.0.0.1:22 $(USER)@172.20.0.1
