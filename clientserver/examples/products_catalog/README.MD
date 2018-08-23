# Exercícios

## Parte 1: Instalação
- Faça o clone dos arquivos desta pasta na sua máquina
- Importe o arquivo base.sql no MySQL, usando a ferramenta de sua preferência
- Coloque o arquivo catalog.php no diretório httdos do Apache da sua máquina
- Teste a conexão acessando o arquivo php no seu computador, indicando o caminho do arquivo. Exemplo: http://localhost/catalog.php?op=list
- Teste outros serviços implementados

## Parte 2: Criação da aplicação cliente
- Crie uma aplicação cliente, usando os conceitos mostrados nas aulas anteriores. 
- Sua aplicação cliente deve acessar o serviço implantado na parte 1, passando os valores escolhidos pelo usuári
- Implemente o processamento da resposta, mostrando os dados de maneira clara ao usuário. Note que o serviço catalog.php devolve os dados em formato JSON
- Seu trabalho será converter essa resposta em algo mais legível para usuários não-técnicos (exemplo: usando table para mostrar os dados)

## Parte 3: Criação de novos serviços
- No arquivo catalog.php, foram implementados 3 serviços
- Crie novos serviços que podem ser executados por aplicações clientes
- Alguns exemplos: inserir produto, excluir produto, aumentar estoque de um produto, reajustar preço de um ou mais produtos
