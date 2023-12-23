# Projeto Carloca

  O projeto Carloca é um sistema de locadora de carros que visa atender às necessidades de gestão de veículos, clientes e locações. O sistema foi desenvolvido com base em requisitos funcionais e não funcionais específicos, focando na operação eficiente da locadora sem abordar aspectos relacionados a pagamentos.

## Requisitos Funcionais

  - Cada carro passui as seguintes caracteristicas:
    
      - Modelo
      - Montadora
      - Cor (branco, preto ou prata)
        
  - Existem diferentes categorias de veículos:
    
      - SUV
      - Sedã
      - Hact

## Modalidade de Locação

  A locação é permitida apenas na modalidade diária.

## Restrições

  - Um Cliente só pode alugar um carro por vez;
  - Um carro locado por um clinente não pode ser oferecido para outro enquanto estiver em locação.

## Historico de Locação

  O sistema deve manter o histórico dos clientes que locaram determinado carro.

## Controle de Quilometragem

  - O sistema deve manter o histórico de quantos quilômetros o cliente rodou com o carro.
  - Deve ser registrado também a quilometragem atual de cada veículo.

## Unidades da Franquia Carloca

  O sistema deve rastrear onde o carro foi locado e onde foi devolvido em cada uma das unidades da franquia Carloca.

## Estrutura do Banco de Dados

  Dentro da pasta `carloca` tem 4 aquivos:

  1. carlocaSQL:
     
     - Contém um modelo de tabela na linguagem SQL.
       
  2. carlocaDiagrama:
     
     - Um diagrama feito no [dbdiagram.io](https://dbdiagram.io/home) contendo o desenho da tabela.
       
  3. inserts:
     
     - Contendo os modelos de inserts.
       
  4. selects:
     
     - Contendo os selects para testar a tabela.
       
  5. brinde
      
     - Contendo o codigo utilizado para a criação do diagrama e as ligações.

## Considerações Finais
 Este projeto foi desenvolvido com base nos conhecimentos adquiridos ao longo do módulo de Bancos de Dados, onde os professores Alex e Ewerton transmitiram seus conhecimentos de maneira abrangente e prática. Durante o curso, foram explorados conceitos fundamentais de modelagem de dados, normalização, SQL e boas práticas de design de banco de dados.
