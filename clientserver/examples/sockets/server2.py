# Adaptado de: 
# https://pythonprogramminglanguage.com/socket-client/
# https://docs.python.org/3/howto/sockets.html
# https://docs.python.org/3/library/socket.html

import socket,sys,signal
from _thread import *

#funcao para tratar o ctrl + c
def signal_handler(signal, frame):
    print("Saindo...")
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

#funcao que vai tratar a conexao de novo cliente
def clientthread(conn):
    conn.send(b'O que vc quer?\n')
    while True:
        data = conn.recv(1024).decode("UTF-8")
        print(conn.getpeername(), "diz",data)
        if data=="bye":
            print("Disconectando de ", conn.getpeername())
            break
        reply = 'O que mais?'
        conn.sendall(bytes(reply,"UTF-8"))
    conn.close()

#criacao do socket do lado do servidor
serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
port = 8000
host = "localhost"
serversocket.bind((host, port))
serversocket.listen(1)
print("Aguardando conexões na porta", port)

#recebendo conexoes
while 1:
    conn, addr = serversocket.accept()
    print ('Connected with ',addr[0],':',str(addr[1]))
    start_new_thread(clientthread ,(conn,))
serversocket.close()
