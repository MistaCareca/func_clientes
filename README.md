# Gerenciamento de Clientes

## Descrição
Este projeto implementa um sistema básico de gerenciamento de clientes em SQL, permitindo o cadastro de clientes e fornecendo uma função para contar o número de clientes cadastrados em um dia específico.

## Estrutura do Banco de Dados
O banco de dados contém uma tabela principal:
- **clientes**: Armazena informações dos clientes (id, nome, email, data de cadastro).

## Pré-requisitos
- MySQL ou outro SGBD compatível com SQL.
- Permissões para criar e manipular bancos de dados e funções.

## Instalação
1. Execute o script SQL fornecido para criar a tabela e a função.
   ```bash
   mysql -u [usuário] -p < seu_script.sql
   ```
   (Substitua `seu_script.sql` pelo nome do arquivo que contém o código SQL.)
2. Conecte-se ao banco de dados onde você deseja criar a tabela:
   ```sql
   -- Se necessário, selecione o banco de dados
   -- USE nome_do_banco_de_dados;
   ```

## Estrutura do Script
O script contém:
1. **Criação da Tabela**:
   - Cria a tabela `clientes` com os atributos `id_cliente`, `nome`, `email` e `data_cadastro`.
   - Define `id_cliente` como chave primária com auto incremento e `nome` e `data_cadastro` como campos obrigatórios.
2. **Criação da Função**:
   - Cria a função `ContarClientesPorDia` que recebe uma data como parâmetro e retorna o número de clientes cadastrados naquele dia.
   - A função utiliza a cláusula `DETERMINISTIC`, indicando que sempre retornará o mesmo resultado para a mesma entrada.
3. **Inserção de Dados**:
   - Insere alguns dados de exemplo na tabela `clientes` para teste.
4. **Consulta da Função**:
   - Demonstra como chamar a função `ContarClientesPorDia` para obter o número de clientes cadastrados em uma data específica.

## Funcionalidades
- **Cadastro de Clientes**: Permite armazenar informações básicas de clientes, como nome, email e a data e hora do cadastro.
- **Contagem de Clientes por Dia**: A função `ContarClientesPorDia` facilita a obtenção do número de novos clientes cadastrados em um dia específico.

## Consultas Disponíveis
1. **Contar Clientes por Dia**:
   - Retorna o número de clientes cadastrados na data especificada.
   ```sql
   SELECT ContarClientesPorDia('AAAA-MM-DD');
   ```
   (Substitua `'AAAA-MM-DD'` pela data desejada.)

## Exemplo de Uso
Para consultar o número de clientes cadastrados em 01 de maio de 2025:
```sql
SELECT ContarClientesPorDia('2025-05-01');
```

### Saída Esperada
```
ContarClientesPorDia('2025-05-01')
----------------------------------
                                 2
```

## Observações
- A função `ContarClientesPorDia` considera apenas a parte da data do campo `data_cadastro`, ignorando a hora.
- Este script fornece uma estrutura básica para o gerenciamento de clientes e pode ser expandido com mais funcionalidades e tabelas conforme a necessidade.
