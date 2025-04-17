#!/bin/bash

CONFIG_FILE="$(dirname "$(realpath "$0")")/extensions.conf"
DCONF_PATH="/org/gnome/shell/extensions/"

function export_extensions() {
    echo "Exportando configuración de extensiones GNOME..."
    dconf dump $DCONF_PATH > $CONFIG_FILE
    echo "Configuración exportada a $CONFIG_FILE"
}

function import_extensions() {
    if [[ -f "$CONFIG_FILE" ]]; then
        echo "Importando configuración desde $CONFIG_FILE..."
        dconf load $DCONF_PATH < $CONFIG_FILE
        echo "Configuración importada correctamente."
    else
        echo "Archivo $CONFIG_FILE no encontrado."
    fi
}

case "$1" in
    export)
        export_extensions
        ;;
    import)
        import_extensions
        ;;
    *)
        echo "Uso: $0 {export|import}"
        ;;
esac
