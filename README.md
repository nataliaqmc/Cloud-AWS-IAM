# AWS Identity and Access Management (IAM):
#### Feito por: Natália Queiroz Menezes Carreras


<details>
<summary>Descrição do serviço AWS IAM:</summary>

##### Características:
O AWS IAM é um serviço da Web que permite controlar o acesso aos recursos da AWS de uma maneira segura, permitindo o gerenciamento das permissões de acesso aos recursos pelos usuários. Dentre os recursos fornecidos do IAM, é possível realizar um acesso compartilhado à sua Conta da AWS, conceder permissões granulares (permissões diferentes para pessoas diferentes) e acessar diferentes aplicações da AWS.
##### Estrutura das políticas:
Para controlar os acessos, é necessário utilizar políticas definindo as permissões aos usuários. A política IAM é composta por alguns elementos, sendo eles:
- Version: define a versão da linguagem da política (sempre usar a versão mais recente).
- Statement: é usado como pai dos demais elementos. 
 - Sid: permite definir um nome (não é obrigatório).
 - Effect: possui o valor ‘Allow’ ou ‘Deny’.
 - Action: a lista de ações relacionados a política.
 - Resource: define quais recursos a política é aplicada.
 - Principal: define as identidades que possuem permissão de acesso (ou não) os recursos da política. 
 - Condition: define algumas condições que a política se aplica. 

#### Solução tecnológica para a infraestrutura:
Dentro de uma empresa, muitas vezes é necessário conceder diferentes permissões para os diferentes cargos ou equipes de trabalho. Com isso, é possível usar as etiquetas de recursos da AWS e as etiquetas de entidades de função do IAM para implementar uma estratégia ABAC para serviços compatíveis com ela, concedendo ou não permissões com base nesses atributos. Para esse projeto, será concedido direito a uso de diferentes recursos da AWS presentes na imagem à baixo.

![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/7a3de254-5cc9-4c91-aae9-5b55c66d2065)

Sendo assim, a ideia será criar quatro usuários pertencentes a quatro projetos diferentes, sendo dois da equipe de desenvolvedores e dois da equipe de marketing. Com essa separação, cada usuário terá acesso a alguns recursos da AWS específicos para seus projetos como mostrado abaixo, além de poderem criar, alterar, ler e apagar os dados de seus próprios projetos/arquivos. Cada usuário terá acesso aos recursos AWS que estão marcados com suas determinadas cores. Além disso, um usuário só poderá editar arquivos de seu projeto, porém poderá visualizar os arquivos dos outros integrantes de sua equipe.

![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/eb49012a-4f1e-48df-8768-108d38f493dd)
</details>


<details>
<summary>Roteiro de instalação</summary>
    
##### Pré-requisitos:
Para executar as etapas de instalação do serviço, será necessário possuir:
- Uma conta da AWS com a qual você possa fazer login como usuário com permissões administrativas.
- O Id de conta de 12 dígitos que será usado para a criação de funções.
    - É possível localizar o Id da conta da AWS usando o serviço AWS Management Console, e seguindo os passos a seguir:
        - Selecione Suporte na barra de navegação do canto superior direito.
        - Dentro da aba Suporte, selecione Support Center.
        - O ID da conta (ou número da conta) aparece no painel de navegação à esquerda. 

Baixe as bibliotecas necessárias para o programa por meio do comando:
```
    python -m pip install -r requirements.txt
```
Para rodar a solução, será necessário rodar o código abaixo no Prompt de Comando:
```
    terraform init
```
Depois, rodar o seguinte código:
```
    terraform apply
```
    
</details>

<details>
<summary>Roteiro de desenvolvimento da solução:</summary>
    
##### Criando Políticas:
##### Criando Usuários:
![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/235f0b0b-e47c-40f3-9316-391ea1d85f0f)


    
</details>


## Rúbrica:

- [ ] Conceito C+ : Ambiente funcionando conforme projeto proposto sem os tipos de usuários configurados no IAM.

- [ ] Conceito B+ : Ambiente funcionando conforme projeto proposto e usuários com permissões diferentes no IAM e documentação entregue.

- [ ] Conceito A+ :  Ambiente funcionando conforme projeto proposto e usuários com permissões diferentes no IAM e documentação bem desenvolvida.