# AWS Identity and Access Management (IAM):
#### Feito por: Natália Queiroz Menezes Carreras


### Descrição do serviço AWS IAM:
#### Características:
O AWS IAM é um serviço da Web que permite controlar o acesso aos recursos da AWS de uma maneira segura, permitindo o gerenciamento das permissões de acesso aos recursos pelos usuários. Dentre os recursos fornecidos do IAM, é possível realizar um acesso compartilhado à sua Conta da AWS, conceder permissões granulares (permissões diferentes para pessoas diferentes) e acessar diferentes aplicações da AWS.
#### Estrutura das políticas:
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

### Roteiro de instalação:
    
#### Pré-requisitos:
Para executar as etapas de instalação do serviço, será necessário possuir:
- Uma conta da AWS com a qual você possa fazer login como usuário com permissões administrativas.
- O Id de conta de 12 dígitos que será usado para a criação de funções.
    - É possível localizar o Id da conta da AWS usando o serviço AWS Management Console, e seguindo os passos a seguir:
        - Selecione Suporte na barra de navegação do canto superior direito.
        - Dentro da aba Suporte, selecione Support Center.
        - O ID da conta (ou número da conta) aparece no painel de navegação à esquerda. 
Clone o repositório em seu computador:
```
    git clone 
```
Crie um arquivo na pasta ***iam/config*** chamado ***config.tfvars.json*** com o seguinte conteúdo (coloque os valores da sua própria conta nas três primeiras variáveis):
```
    {
    "AWS_ACCESS_KEY_ID": "XXXXXXXXXXXXXXXXXXXX",
    "AWS_SECRET_ACCESS_KEY": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    "AWS_ACCOUNT_ID": "123456789012",
    "AWS_USER_NAME1": "blue",
    "AWS_USER_NAME2": "pink",
    "AWS_USER_NAME3": "purple",
    "AWS_USER_NAME4": "green",
    "AWS_TEAM_1": "desenvolvedores",
    "AWS_TEAM_2": "marketing",
    "AWS_PROJECT_1": "megadados",
    "AWS_PROJECT_2": "redes",
    "AWS_PROJECT_3": "machine",
    "AWS_PROJECT_4": "inteligencia"

}
```
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
    terraform apply -var-file=config/config.tfvars.json
```

### Roteiro de desenvolvimento da solução:
#### Criando Usuários:
![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/235f0b0b-e47c-40f3-9316-391ea1d85f0f)
Primeiramente, foi necessário criar os quatro usuários (***blue, pink, purple, green***) e adicionar as suas respectivas tags de equipe e projeto. Para isso, repetimos o código abaixo mudando apenas as variáveis, e assim criamos os usuários. 
```
    resource "aws_iam_user" "user_create" {             # Cada "resource" precisa de um "name" específico
    name = var.AWS_USER_NAME1                           # O nome do usuário será adcionado automaticamente aqui, baseado no que foi declarado nas configurações
    tags = {"access-project":"${var.AWS_PROJECT_1}",    # As tags representam o projeto e a equipe que o usuário faz parte
            "access-team": "${var.AWS_TEAM_1}"  
      }
    }
```
![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/bf1b8545-5acb-45e7-9a43-85c6e3fdacde)

Para acessar o código completo dos usuários, basta clicar [aqui.](iam/user.tf)
#### Criando Políticas:
Com os usuários e tags criadas, passamos agora para a criação das políticas. Será necessário criar uma política gerenciada pelo cliente chamada *access-assume-role* com a finalidade de permitir que um usuário assuma qualquer função em sua conta com o prefixo *access-*. Com essa política criada, torna-se possível realizar a divisão das equipes e projetos entre os usuários.
```

```
#### Criando grupos:

 
#### Criando as funções:
![image](https://github.com/nataliaqmc/Cloud-AWS-IAM/assets/62567966/f1d8b55b-fa4b-4dd4-b550-c75eb08f024c)

#### Realizando as permissões específicas:
### Rúbrica:

- [ ] Conceito C+ : Ambiente funcionando conforme projeto proposto sem os tipos de usuários configurados no IAM.

- [ ] Conceito B+ : Ambiente funcionando conforme projeto proposto e usuários com permissões diferentes no IAM e documentação entregue.

- [ ] Conceito A+ :  Ambiente funcionando conforme projeto proposto e usuários com permissões diferentes no IAM e documentação bem desenvolvida.

### Referências bibliográficas:
 - Terraform Registry. Disponível em: https://registry.terraform.io/providers/hashicorp/aws/latest/docs. Acesso em: 24 maio. 2023.
 - What is IAM? - AWS Identity and Access Management. Disponível em: https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html. Acesso em: 24 maio. 2023.
 - Projeto: Computação Nuvem - Infraestrutura por Código. Disponível em: <https://fran-janela.github.io/roteiro-proj-CompNuvem/>. Acesso em: 24 maio. 2023.

‌

‌

‌
