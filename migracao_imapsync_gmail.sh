#!/bin/bash

# Caminho para o imapsync
IMAPSYNC_BIN="/usr/local/bin/imapsync" # Ajuste o caminho conforme necessário

# Servidores de origem e destino
SOURCE_HOST="imap.gmail.com"    # Servidor de origem: Gmail
DEST_HOST="mail.irroba.com.br"  # Servidor de destino

# Função para verificar dependências
check_dependencies() {
    if ! command -v $IMAPSYNC_BIN &> /dev/null; then
        echo "Erro: imapsync não encontrado em $IMAPSYNC_BIN. Instale o imapsync antes de continuar."
        exit 1
    fi
}

# Função para realizar a sincronização
sync_accounts() {
    local source_user="$1"
    local source_pass="$2"
    local dest_user="$3"
    local dest_pass="$4"
    
    echo "Iniciando sincronização de $source_user para $dest_user..."

    # Opções de sincronização
    IMAPSYNC_OPTIONS="--syncinternaldates --resyncflags --delete2duplicates --ssl1 --ssl2 --logfile imapsync_$(date +%F_%T).log"

    # Executar a sincronização
    $IMAPSYNC_BIN \
        --host1 "$SOURCE_HOST" --user1 "$source_user" --password1 "$source_pass" \
        --host2 "$DEST_HOST" --user2 "$dest_user" --password2 "$dest_pass" \
        $IMAPSYNC_OPTIONS

    # Verificar o status de execução
    if [ $? -eq 0 ]; then
        echo "Sincronização de $source_user para $dest_user concluída com sucesso!"
    else
        echo "Erro durante a sincronização de $source_user para $dest_user. Verifique os logs."
    fi
}

# Verificar dependências
check_dependencies

# Caminho para o arquivo de contas
ACCOUNTS_FILE="usuarios.txt"

# Verificar se o arquivo de contas existe
if [ ! -f "$ACCOUNTS_FILE" ]; then
    echo "Erro: O arquivo de contas $ACCOUNTS_FILE não foi encontrado."
    exit 1
fi

# Ler e processar cada linha do arquivo de contas
while IFS=' ' read -r source_user source_pass dest_user dest_pass; do
    # Ignorar linhas em branco ou comentários
    [[ -z "$source_user" || "$source_user" =~ ^# ]] && continue

    # Verificar se a conta de origem é do Gmail
    if [[ "$source_user" == *@gmail.com ]]; then
        echo "A migrar e-mails de: $source_user (Gmail)"
    fi

    # Sincronizar cada conta
    sync_accounts "$source_user" "$source_pass" "$dest_user" "$dest_pass"
done < "$ACCOUNTS_FILE"

echo "Sincronização de todas as contas concluída!"
