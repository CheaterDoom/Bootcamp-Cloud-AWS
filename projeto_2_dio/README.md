# Lab 02 - servidor Web (APACHE)

## Ambiente de densevolvimento
   - Estou utilizando Vagrant da Hashcorp, Ubuntu 22.04 LTS e Virtualbox como Hipervisor.

## DIRETÓRIOS:
    /publico
    /adm
    /ven
    /sec

## GRUPOS(USUARIOS):
    GRP_ADM
        carlos
        maria
        joao
    GRP_VEN
        debora
        sebastiana
        roberto
    GRP_SEC
        josefina
        amanda
        rogerio


    - Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
    - Todo provisionamento deve ser feito em um arquivo Bash Script;
    - O dono de todos os diretórios criados será o usuário root;
    - Todos os usuários terão permissão total dentro do diretório publico;
    - Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
    - Os usuários não poderam ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
    - Subir arquivo de Script criado para a sua conta no Github.

    -Instalar o servidor web e configura-lo
    -Instalar o unzip;
    -Baixar a aplicação disponivel no endereço: https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
    -Copiar os arquivos da aplicação no diretório padrão do apache;
    -Subir arquivo de script para um repositório no GitHub.
