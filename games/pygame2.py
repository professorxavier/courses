# importar uo pygame
import pygame

# iniciar a biblioteca
pygame.init()

# criando uma janela simples
janela = pygame.display.set_mode((800, 400), 0, 32)

# colocando um título na janela
pygame.display.set_caption("Minha primeira janela")

# preechendo o fundo com branco
janela.fill((255, 255, 255))

# atualizando o display com as alterações feitas (como o fundo, por exemplo)
pygame.display.update()

# mantendo a janela aberta até o usuário clicar no X
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.MOUSEBUTTONDOWN:
            (mouseX, mouseY) = pygame.mouse.get_pos()
            print(mouseX, mouseY)