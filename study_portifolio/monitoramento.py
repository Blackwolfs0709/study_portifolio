import os
import platform

def verificar_servidor(ip:)
    resposta = os.system(f"ping -c 4 {ip}")
    if resposta == 0:
        return f"Servidor {ip} esta online"
    else:
        return f"Servidor {ip} esta offline"

print(verificar_servidor('192.168.0.1'))