# Exemplo adaptado através de fontes do site pygame.org

import pygame, sys
from pygame.locals import *

# iniciar a biblioteca
pygame.init()

# cria uma janela
windowSurface = pygame.display.set_mode((800, 400), 0, 32)

# variáveis para armazenar as cores
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)

# preencher o fundo com uma cor
windowSurface.fill(WHITE)

# desenhar uma linha
inicio = (60,60) # x,y
fim = (400,60) # x,y
alturaLinha = 6
pygame.draw.line(windowSurface, RED, inicio, fim, alturaLinha)

# desenhar um retângulo
dimensoes = [75, 120, 300, 200] # x, y, largura, altura
pygame.draw.rect(windowSurface, GREEN, dimensoes, 0)

# desenhar um círculo
raio = 50
posicao = (460, 200) # x, y
pygame.draw.circle(windowSurface, BLUE, posicao, raio, 0)

# atualizar a janela com os elementos criados
pygame.display.update()

# rodar o programa
while True:
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            sys.exit()