# Guia de Migração de E-mails com IMAPSync

Este tutorial fornece instruções para realizar a migração de e-mails utilizando o IMAPSync.

## Passos para Configurar a Conta do Gmail

### 1. Acesse Sua Conta Google
1. Abra o navegador e acesse: [https://myaccount.google.com/](https://myaccount.google.com/).
2. Faça login com a conta do Gmail que você deseja migrar os e-mails.

### 2. Ative a Verificação em Duas Etapas
1. Clique em **Segurança** no menu lateral esquerdo.
2. Na seção "Como fazer login no Google", procure por **Verificação em duas etapas** e clique nela.
3. Configure a verificação em duas etapas:
   - Clique em **Começar**.
   - Confirme sua senha.
   - Siga as instruções para ativar.

### 3. Gere uma Senha de Aplicativo
1. Ainda na página **Segurança**, busque por “app passwords”.
2. Clique em **Senhas de aplicativo** (pode ser necessário inserir sua senha novamente).
3. Na página exibida:
   - No campo **Selecionar app**, escolha **Outro**.
   - Insira um nome, como "migração".
   - Clique em **Gerar**.
4. Anote ou copie a senha de 16 caracteres gerada.

**Exemplo:** `abcd efgh ijkl mnop`

### 4. Ative o Acesso IMAP no Gmail
1. Acesse o Gmail em [https://mail.google.com](https://mail.google.com).
2. Clique no ícone de engrenagem no canto superior direito.
3. Escolha **Ver todas as configurações**.
4. Vá até a aba **Encaminhamento e POP/IMAP**:
   - Ative as opções **Habilitar IMAP** e **Habilitar POP**.
   - Clique em **Salvar alterações**.

## Instalação e Configuração do IMAPSync

### 1. Baixe o IMAPSync
Faça o download do IMAPSync no site oficial: [https://imapsync.lamiral.info/](https://imapsync.lamiral.info/).

### 2. Configure o Script
1. Dê permissão ao arquivo `.sh`:
   ```bash
   chmod +x arquivo.sh
