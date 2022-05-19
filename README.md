# Inteli - Instituto de Tecnologia e Liderança 

<p align="center">
<a href= "https://www.inteli.edu.br/"><img src="https://www.inteli.edu.br/wp-content/uploads/2021/08/20172028/marca_1-2.png" alt="Inteli - Instituto de Tecnologia e Liderança" border="0"></a>
</p>

# Projeto 1 - Tamagotchi Financeiro

## EduFin Dev Team

## Integrantes:
- <a href="https://www.linkedin.com/in/alan-rozensztajn-schipper-0563701ba/">Alan Schipper</a>;
- <a href="https://www.linkedin.com/in/ana-clara-l-m-zaidan-254376232/">Ana Clara Zaidan</a>;
- <a href="https://www.linkedin.com/in/bruno-meira-75419918b/">Bruno Meira</a>;
- <a href="https://www.linkedin.com/in/filipi-enzo-siqueira-kikuchi-1811a9213/">Filipi Kikuchi</a>;
- <a href="https://www.linkedin.com/in/giovanna-furlan-torres-378316182/">Giovanna Torres</a>;
- <a href="https://www.linkedin.com/in/patrick-miranda-7ab911231/">Patrick Miranda</a>; e
- <a href="https://www.linkedin.com/in/lucas-pereira-3410b1233">Lucas Pereira</a>.

## Descrição

<p align="justify"> 📜 O jogo terá como objetivo promover uma conscientização sobre educação financeira, contribuindo para a inserção de pessoas antes analfabetas financeiramente na sociedade. Esse objetivo será atingido através de um jogo que equilibra o didatismo e a diversão, em que o foco estará mais na aprendizagem prática, mesmo que contenha situações de aprendizagem mais teórica. Nesse sentido, conceitos de finanças reais serão abordados através da representação de situações cotidianas, focadas na evolução do personagem ao cuidar de sua saúde financeira. Portanto, esse é um projeto de faculdade que visa gerar um produto final eficiente e jogável para a empresa parceira, BTG Pactual, impactando o nível de educação financeira da sociedade.
<br><br>
<p align="center">
<img src="https://img.itch.zone/aW1nLzg2NjE0ODUucG5n/original/564Wxu.png" alt="EduFin App" border="0">
  Game by <a href="https://edufin-dev-team.itch.io/edufin-app">EduFin Dev Team</a> 
</p>


<p align="justify"> 💡 A proposta principal gira em torno de um personagem que passa na faculdade e acaba por mudar de cidade. Dessa forma,  agora que reside sozinho, ele terá que fazer a própria gestão financeira. Logo, por meio de escolhas interativas, o usuário terá de ajudar seu personagem a se adaptar e gerir seu dinheiro, tendo a possibilidade de mudar o andamento do jogo. Inicialmente, a única fonte de renda do personagem será uma mesada mensal fornecida por sua avó, mas no decorrer do jogo o usuário poderá desbloquear novos meios de conseguir dinheiro, utilizando dos conhecimentos de gestão financeira adquiridos para lidar com ele. A princípio, existe uma linearidade no jogo, com fases,  conquistas e desafios, e a situação mais extrema que pode acontecer ao personagem é a falência, em que o dinheiro todo do personagem acaba. O game contará com capítulos que, por mini jogos, abordarão temas sobre educação financeira de forma dinâmica. A progressão nesses capítulos ocorre por ações que mantêm o bem-estar financeiro do personagem, que requisitará atributos mínimos do avatar do jogador para avançar na campanha.

## 🛠 Estrutura de pastas

- Raiz<br><br>
| --> documentos<br>
  &emsp;| --> antigos<br>
  &emsp;|  GDD EDUFIN DEV.pdf<br>
| --> executáveis<br>
  &emsp;| --> windows<br>
  &emsp;| --> html<br>
| --> imagens<br>
| --> src<br>
    &emsp;| --> FirstClass<br>
| readme.md<br>
  
A pasta raiz contém um arquivo principal:

<b>README.MD</b>: Consiste em um guia geral sobre todos os aspectos do projeto.

Há também 2 pastas que seguem da seguinte forma:

<b>documentos</b>: Onde encontra-se todos os documentos relacionados ao projeto, mas principalmente o <b>GDD (Game Design Document)/Documentação do Sistema</b>. Há uma subpasta denominada <b>antigos</b> onde estarão todas as versões antigas da documentação.

<b>executáveis</b>: Onde encontra-se todos os executáveis do jogo, prontos para rodar, com, no mínimo, 2 pastas: Uma para binários <b>Windows</b> e uma para a <b>Web/HTML</b>.

<b>imagens</b>: Onde encontra-se imagens relacionadas ao jogo/sistema e logos prontos para serem utilizados e visualizados.

<b>src</b>: Onde encontra-se todo o código fonte do jogo/sistema, pronto para para ser baixado e modificado.

## 🛠 Instalação

<b>Windows:</b>

Não há instalação, apenas executável! Baixe os arquivos disponíveis em: <a href="https://github.com/2022M1T2/Projeto1/tree/main/executáveis/Windows">Executáveis Windows</a>, e execute "EduFin.exe" como qualquer outro programa.

```sh
Observe que é necessário que o arquivo "EduFin.pck" esteja no mesmo diretório que "EduFin.exe".
```

<b>HTML:</b>

Não há instalação! Baixe os arquivos disponíveis em <a href="https://github.com/2022M1T2/Projeto1/tree/main/executáveis/HTML">Executáveis HTML</a>, e execute-o como uma página da web (através de algum navegador).

  ```sh
Dependendo de suas configurações de firewall, talvez seja necessário instaurar um web service como xampp ou wampp para que o jogo rode localmente.
```

## 💻 Configuração para Desenvolvimento

Para abrir este projeto você necessita da seguinte ferramenta:

-<a href="https://godotengine.org/download">GODOT</a>

```sh
execute godot engine
selecione import (projeto 1 --> src --> First class --> project.godot) para ter acesso ao projeto
selecione (project --> export --> add) para criar um executavel para plataforma em que deseja testar o jogo
```
  
## 🎮 Itch.io
  
 Jogue online: <a href="https://edufin-dev-team.itch.io/edufin-app">EduFin App</a>
  
## 🗃 Histórico de lançamentos

A cada atualização os detalhes devem ser lançados aqui.

* 0.0.1 - 18/02/2022
    * Lançamento da primeira versão do jogo.
  
* 0.0.2 - 25/02/2022
    * Trabalho em andamento.
    * MUDANÇA: Alteração dos cenários.
  
* 0.0.3 - 03/03/2022
    * ADD: Implementação das aulas teóricas, menu e quiz.
  
* 0.1.0 - 04/03/2022
    * Lançamento da segunda versão do jogo.
 
* 0.1.1 - 11/03/2022
    * Lançamento da terceira versão do jogo.
 
* 0.1.2 - 18/03/2022
    * Lançamento da quarta versão do jogo.
  
* 0.1.3 - 25/03/2022
    * Lançamento da quinta versão do jogo.
  
* 0.1.4 - 01/04/2022
    * Lançamento da sexta versão do jogo.
  
* 0.1.5 - 08/04/2022
    * Lançamento da sétima versão do jogo.
  
* 0.2.0 - 14/04/2022
    * Lançamento da versão final do jogo.

## 📋 Licença/License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/2022M1T2/Projeto1">EduFin App</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/2022M1T2/Projeto1">Inteli, Alan Schipper, Ana Clara Zaidan, Bruno Meira, Filipi Kikuchi, Giovanna Torres, Patrick Miranda e Lucas Pereira.</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

## 🎓 Referências

Aqui estão as referências usadas no projeto.

(As referências foram utilizadas somente como inspiração no projeto)

1. <https://atlus.com/p5r/lang/en/>
2. <https://www.greenheartgames.com/app/game-dev-tycoon/> 
3. <https://www.artstation.com/bizarrebeasties>
