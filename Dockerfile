# Utilise une image légère de Python
FROM python:3.8-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans l’image
COPY app.py music_recommender.joblib ./

# Installer les dépendances
RUN pip install fastapi uvicorn joblib scikit-learn

# Exposer le port sur lequel l’app tourne
EXPOSE 5000

# Commande pour démarrer le serveur FastAPI avec Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000"]
