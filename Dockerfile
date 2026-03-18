# Utilisation de la version Node.js 22 LTS (Alpine) pour la performance [cite: 113, 118]
FROM node:22-alpine

# Définition du répertoire de travail dans le conteneur [cite: 119]
WORKDIR /app

# Copie des fichiers de dépendances [cite: 120]
COPY package*.json ./

# Installation des dépendances (sans les fichiers inutiles grâce au .dockerignore) [cite: 120]
RUN npm install

# Copie du reste du code source (index.js, etc.) [cite: 121]
COPY . .

# Exposition du port utilisé par votre serveur HTTP [cite: 122]
EXPOSE 3000

# Commande pour démarrer l'application [cite: 123]
CMD ["node", "index.js"]