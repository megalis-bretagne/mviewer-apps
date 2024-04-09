# MA COMMUNE

## Configuration

Deux fichiers de configurations doivent être créé sur l'environnement de déploiement :

1. **Fichier config.json**
    - Dupliquez le fichier `config_template.json` dans le même emplacement.
    - Renommez la copie en `config.json`.
    - Remplacez la valeur de la variable `fqdn` par le nom de domaine du mviewer souhaité.


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

## Utilisation
L'application "Ma Commune" affiche une carte centrée sur une commune spécifique. Pour sélectionner la commune à afficher, modifiez l'URL du mviewer en ajoutant le paramètre "commune=<CODE_INSEE>".

Exemple pour afficher la commune de Fougères : 
```lua 
http://{{fqdn}}/?config=apps/ma_commune/config.xml&commune=35115
```
Remplacez {{fqdn}} par la valeur réelle de votre nom de domaine défini dans le fichier config.json.

