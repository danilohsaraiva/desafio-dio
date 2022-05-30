# Acervo
**Sobre**<br>
Aqui se encontra um compilado de anotações, sobre um determinado assunto ou tecnologia que eu precise dar uma "passadinha de olho" posteriormente, transcrito do meu caderno de anotações para compor este arquivo .md."<br>
Lembre-se, aqui você não encontrará tudo referente ao assunto em questão, somente anotações pontuais e de relevância para mim em meus estudos.

**Importante**<br>
*"O índice a seguir mostra o tipo do conteúdo para o qual existe algum tipo de anotação a respeito."*

## **Índice**
**1. Banco de dados**<br>
**2. Conceitos Gerais (Siglas)**<br>
**3. Flexbox**<br>
**4. HTTP e HTTPS**<br>
**5. Internet**<br>
**6. JavaScript**<br>
**7. PHP**

## 1. Banco de dados
**Anotações gerais**
- Ao manipular banco de dados principalmente em sua criação é de extrema inportância a utilização de primary key.
- Por convenção a sintaxe de comandos é utilizada em CAPSLOOK.

**Comandos básicos** 
- CREATE TABLE (Cria tabela)
- VALUE(S) (Define valores)
- INSERT INTO (Define onde será criado a tabela de dados)
- DELETE (Muito cuidado ao utilizar pois não é possivel recuperar dados deletados)
- GROUP BY E COUNT (Boa para controle)
- ORDER BY (Define a ordem em que são exibidos: ASC, *crescente já vem no padrão* e DESC, *decrescente*)
- WHERE (define o dado a ser manipulado, costumente utilizado junto a primary key)

**Tipo de dados**
- VARCHAR() <- entre parentêses indica a quantidade de caracteres
- INT (valor inteiro) 
- DATE (Padrão americano AAAA-MM-DD)

**Exemplo:** 
```sql
CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
)

INSERT INTO pessoas(nome, nascimento) VALUES ('Danilo', '1992-01-07')
INSERT INTO pessoas(nome, nascimento) VALUES ('Daniel', '1987-07-22')
INSERT INTO pessoas(nome, nascimento) VALUES ('Pedro', '1990-02-25')
 ```
## 2. Conceitos Gerais
- **API** (Application Programming Interface): detem regras de negócio, possuí interface para que os sistemas de comuniquem, permite construção de aplicativos.
- **API endpoints**: Serviços dispostos, composto por **onde?** **Como acessá-lo**? **Contém o que?** Address, Binding e Contract respectivamente.<br>
- **CPU**(Central Processing Unit): Composta de núcleos, onde cada núcleo executa uma atividade simultânea a outra.<br>
- **JSON** (JavaScript Object Notation) forma de comunicação do back-end e front-end. *É feito uma requisição ao API que por sua vez restorna um JSON que contém informações que são mapeadas pelo front-end para serem dispostos em tela posteriormente*
- **SPA e  Aplicações Web** (Single Programming Application) É carregada de uma única vez, demora para carregar, quando desenvolvida com React/Angular tem fácil adaptação para mobile, já as aplicações requerem mais de uma requisição.<br>
- **SSD** (Solid State Drive): Não volátil, guarda informações e mais confiabilidade.<br>

## 3. CSS Flexbox(é uma delícia)<br>
**Seu uso se dá, tendo em vista a importância de criar layolts responsivos, ou seja, que respeitem diferente resoluções de telas de aparelhos distintos, organizando seu conteúdo de maneira harmônica.**

- Raciocínio que me ajudou a compreender melhor o assunto:<br>
Ao definir definir o tamanho do container você delimita até que ponto os *filhos* deste container irão se distribuir, note que, enquanto o tamanho do container é equivalente a soma do tamanho dos seus items *filhos* ele permace estatico.<br>

*Obs: imagem azul representa row  e vermelha row-reverse*.<br>
Note que o tamanho do container tem valor de 250px e seus *"filhos"* 50px, deste modo eles continuam na mesma posição só muda a direção, da direita para esquerda. pelo row-reverse presente na estrutura vermelha. Neste momento defini margin: 0px nos itens destes containers.
![img](Flexbox-exemplo1.jpg)<br>

Quando o tamanho do container gera uma *"sobra"* ele se organizam conforme o sentido que foi definido (display: flex).<br>

![img](Flexbox-exemplo2.jpg)
O oposto ocorre quando se diminuí o tamanho do container, até o ponto de vazar seus itens.Note que o tamanho do container é a metade do valor dos seus itens *filhos*, fica bastante nítido pela distribuição em colunas. (coluna amarela está definida como row e a roxa como row-reverse).<br>
![img](Flexbox-exemplo3.jpg)<br>
levando em conta o container e a propriedade que você aplica a ele, fica mais fácil compreender seu conceito e usabilidade.

**Informações aleatórias sobre o assunto:**<br>
- Diferença entre **justify-content** e **align-items**: no justify é necessário definir a altura do container enquanto no align não.
- **align-itens**, é comumente usado em **row**, em column ele adota um posicionamento diferente do esperado.
- **align-content** vem de padrão **stretch** e há necessidade de ser difinido *"flex-wrap: wrap"* ao container, o mesmo deve ter height com valor que seja o dobro do tamanha de seus itens no mínimo.
- **Flex-grow** cado seja inicializado, ou seja diferente do padrão: 0, o justify-content não funcionará, o grow trata do espaçamento entre os itens, comprimindo o contéudo dos itens caso haja necessidade devido ao tamanho do mesmo e crescendo espaçamento conforme sua configuração.
- ***PESQUISAR A RESPEITO DE MEDIDAS EM %.***
- shrink: padrão definido 1.
- grow: padrão definido 0.
- order: padrão definido 0.
- basis: 0(não permite quebra de linha)
- align-self: precisa de que não esteja definido align-items.
- align-self: auto (respeita align-items.)
- Trabalha se com breakpoints para cuidar da responsividade.
- "color rgba(var(--i1d,38,38,38),1);" caso use em background-color: deixa na cor padrão.
- Para deixar algumas tags de "em linha" como as tags < p > e < div >, uma do lado da outra, define-se display: inline-block;



## 4. HTTP e HTTPS<br>
- É a ponte entre o conteúdo solicitado e o navegador do cliente.<br>
- O que difere entre HTTPS e HTTP é o fator de segunrança, ao constrír um site com o uso do HTTPS o administrador precisa de duas chaves, a privada fica com o servidor garantindo que as informações sejam acessadas apenas pelo detentor da mesma.

## 5. Internet<br>
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

## 6. JavaScript
*" Basicamente JavaScript é uma linhagem de programação de tipagem fraca, que possibilita trabalhar tanto no back quanto front-end".*

* Há duas formas de se declarar um script em uma pagina HTML, diretamente no arquivo html criando um script, desta maneira:

```html
<script>
      <!--  Inserido comandos JavaScript dentro da tag script-->
</script>
```
Ou, criando uma referência no arquivo HTML e trabalhando com seu script em um arquivo distinto.<br>
Criando vinculo:
```html
<script src="script.js"></script>
```
**Tipos de dados**<br>
Tipo| Valor 
--- | ---
boolean | verdadeiro ou falso
number | número
string | caracteres/números/simbolos<br>

- Há duas formas de se declarar váriaveis, **let** (*escopo local*) e **var** (*escopo global*), seguido do nome da variável e depois seu tipo de valor.
- Constante é declarado com uso da palavra reservada **const**
- No JavaScript declaramos funções e as chamamos a todo momento para realizar alguma configuração ou interação com usuário.
- Estruturas de repetição: São estruturas que são realizar até ser satisfeito um determinado requisito(if e swith case por exemplo).
- Os operadores lógicos auxilixam a execução de comandos, alguns deles:<br>

Símbolo | Significado 
---|---
=== | Verifica se o dado é de mesmo valor e tipo
!== | Verifica se é diferente no valor e tipo
<> | Menor e maior, respectivamente
% | Muito utilizado para verificar se um número é par

- Comandos básicos<br>
**prompt** Imprime no browser<br>


- Podemos concatenar strings utilizando o (+) ou com ajuda das ` e o comando ${}
- **Arrow function** é uma maneira de declarar uma função de maneira mais simplificada
- **Evento** são interações que geram algum resultado baseado na iteração usuário e sistema, são maneiras de manipula-los:
```javascript
 document.getElementByID("nome")
 document.addEventListener("nome_evento_sem(on))",funcao())
```
**ESTUDAR SOBRE APIs**<br>
**ESTUDAR COLEÇÕES CHAVEADAS(MAPS E SET)**<br>
**ESTUDAR MODOLO**
- **Arrays** são estruturas que podem guardar diversos tipos de dados, até mesmo outros arrays.



## 7. PHP<br>
- Linguagem de programação utilizada no back-end, pode ser embutida no HTML.
- Interpretado, ou seja não gera um executável, o servidor que interpreta  e executa seu conteúdo.<br>
- Necessário servidor web.

