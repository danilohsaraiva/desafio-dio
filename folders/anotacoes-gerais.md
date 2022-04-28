# Acervo
**Sobre**<br>
Aqui se encontra um compilado de anotações, sobre um determinado assunto ou tecnologia que eu precise dar uma "passadinha de olho" posteriormente, transcrito do meu caderno de anotações para compor este arquivo .md."<br>
Lembre-se, aqui você não encontrará tudo referente ao assunto em questão, somente anotações pontuais e de relevância para mim em meus estudos.

**Importante**<br>
*"O índice a seguir mostra o tipo do conteúdo para o qual existe algum tipo de anotação a respeito."*

## **Índice**

**1. Flexbox**<br>
**1. HTTP e HTTPS**<br>
**2. Internet**<br>
**3. PHP**

## 1. Flexbox<br>

- Raciocínio que me ajudou a compreender melhor o assunto:<br>
Ao definir definir o tamanho do container você delimita até que ponto os *filhos* deste container irão se distribuir, note que, enquanto o tamanho do container é equivalente a soma do tamanho dos seus items *filhos* ele permace estatico.<br>

*Obs: imagem azul representa row  e vermelha row-reverse*<br>
Note que o tamanho do container tem valor de 250px e seus *"filhos"* 50px, deste modo eles continuam na mesma posição só muda a direção, da direita para esquerda. pelo row-reverse presente na estrutura vermelha.
![img](Flexbox-exemplo1.jpg)<br>

Quando o tamanho do container gera uma *"sobra"* ele se organizam conforme o sentido que foi definido.<br>

![img](Flexbox-exemplo2.jpg)
O oposto ocorre quando se diminuí o tamanho do container, até o ponto de vazar seus itens.Note que o tamanho do container é a metade do valor dos seus itens *filhos* fica bastante nítido pela distribuição em colunas. (coluna amarela está definida como row e a roxa como row reverse).<br>
![img](Flexbox-exemplo3.jpg)


## 2. HTTP e HTTPS<br>
- É a ponte entre o conteúdo solicitado e o navegador do cliente.<br>
- O que difere entre HTTPS e HTTP é o fator de segunrança, ao constrír um site com o uso do HTTPS o administrador precisa de duas chaves, a privada fica com o servidor garantindo que as informações sejam acessadas apenas pelo detentor da mesma.

## 3. Internet<br>
- Diferença entre *link* e *URL*:<br>
Link é a ligação (ponte p/ outra página).<br>
URL é o enderço

- Backbone<br>
Basicamente auxiliam na comunicação dos dados, possuem ligação com outros backbones.

- P2P<br>
Comunicação entre dois dispositivos sem uso da internet.

- DSN (*Domain Name System*)<br>
Converte o endereço URL no seu respectivo IP.

- TCP/IP (*Trasnmission Control Protocol*)<br>
Forma de comunicação composta por 4 camadas.

## 4. PHP<br>
- Linguagem de programação utilizada no back-end, pode ser embutida no HTML.
- Interpretado, ou seja não gera um executável  o servidor que interpreta  e executa seu conteúdo.<br>
- Necessário servidor web.

