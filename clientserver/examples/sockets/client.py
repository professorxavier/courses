# Adaptado de: 
# https://pythonprogramminglanguage.com/socket-client/
# https://docs.python.org/3/howto/sockets.html
# https://docs.python.org/3/library/socket.html

import socket
import sys  

#estabelecendo conexao com o servidor
host = 'localhost'
port = 8000
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
remote_ip = socket.gethostbyname( host )
s.connect((remote_ip , port))

#comunicação via socket
while True:
    msg = input("Cliente: ")
    s.sendall(bytes(msg, 'utf-8'))
    reply = s.recv(4096).decode("utf-8")
    print("Server:",reply)
    if (msg=="bye"):
        print("Cliente: Saindo da conexão com o servidor")
        break