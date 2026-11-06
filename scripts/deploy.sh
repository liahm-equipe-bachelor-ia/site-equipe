#!/bin/bash
# Demande à Linux d'exécuter ce fichier avec Bash.
set -e
# Arrête le script si une commande échoue.
REPO="$HOME/serveur/site-equipe"
# Enregistre l'adresse du dossier de notre dépôt.
if [ ! -d "$REPO/.git" ]; then
  # Vérifie que le dossier existe et contient bien un dépôt Git.
  echo "Erreur : dépôt introuvable dans $REPO" >&2
  # Affiche un message d'erreur dans le terminal.
  exit 1
  # Arrête le script car le dépôt est introuvable.
fi
# Termine la vérification du dépôt.
cd "$REPO"
# Va dans le dossier du dépôt.
git pull
# Récupère les derniers changements depuis GitHub.
sudo cp index.html style.css /var/www/html/
# Copie la page et son fichier de style dans le dossier de Nginx.
echo "Déploiement terminé : le site a été mis à jour."
# Affiche un message pour confirmer la fin.