# PROJETO RICK AND MORTY

Desenvolvimento de um aplicativo iOS com foco na exibição de informações detalhadas sobre os personagens da série _Ricky And Morty_. O app utilizará a API [Ricky and Morty](https://rickandmortyapi.com/documentation/) para listar os personagens e informações mais detalhadas de cada um. Também será possível encontrar informaões com mais agilidade utilizando filtros de busca por nome.

## O que será apresentado?

O aplicativo contará com duas telas: Principal e Detalhes.
A tela principal apresentará listagem com informações resumidas de cada personagem: 

- Imagem;
- Nome;
- Status (vivo, morto, desconhecido);
- Espécie. 

Após a seleção de um dos itens apresentados, o usuário será direcionado para a tela de detalhes, que apresentará todas as demais informações fornecidas pela API.

- Espécie e tipo (quando disponível);
- Gênero;
- Local de origem;
- Localização atual;
- Episódios onde o personagem aparece. 

## Arquitetura

_MVVM - Model-View-ViewModel_

Todas as vantagens do uso da MVVM giram em torno da sua principal característica: A separação de responsabilidades. A MVVM facilita a manutenção e compressão do código, além de simplificar a criação de testes unitários. Outro benefício significativo é a reutilização de código, já que os componentes não estão acoplados uns aos outros. Por fim, garante também o trabalho colaborativo paralelo, já que interface e lógica estão separadas. 

## API

A API utilizada será a [Ricky and Morty](https://rickandmortyapi.com/documentation/) que fornecerá ao app as informações necessárias através dos _endpoints_:

- [Characters](https://rickandmortyapi.com/api/character);
- [Locations](https://rickandmortyapi.com/api/location);
- [Episodes](https://rickandmortyapi.com/api/episode);


## Estratégia de Desenvolvimento

A construção do app contará com a produção das seguintes etapas: 

- Criação de uma função que fará a requisição dos personagens na API;
- Criação de uma função que fará a busca de personagens pelo nome na API;
- Criação de uma view de listagem de personagens;
- Criação de uma view de exibição de detalhes dos personagens;
- Criação de uma lógica de navegação que será a responsável pela transição entre as views de listagem / detalhes;
- Criação de uma lógica de paginação para exibir todos os personagens disponíveis na API.
