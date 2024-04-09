# MEGALIS SERVICES

## Configuration

Deux fichiers de configurations doivent être créé sur l'environnement de déploiement :

1. **Fichier config.json**
    - Dupliquez le fichier `config_template.json` dans le même emplacement.
    - Renommez la copie en `config.json`.
    - Remplacez la valeur de la variable `fqdn` par le nom de domaine du mviewer souhaité.


Exemple :
Exemple :
   ```json
   {
       "fqdn": "https://geobretagne.fr/"
   }
   ```

2. **Fichier config/configuration.js**
    - Dupliquez le fichier config/configuration_template.js dans le même dossier.
    - Renommez la copie en configuration.js.
    - Remplacez la valeur de la variable CONFIG_FQDN par la même valeur que celle de fqdn dans le fichier config.json.
Exemple : 
```javascript
var CONFIG_FQDN = "https://geobretagne.fr/"
```



