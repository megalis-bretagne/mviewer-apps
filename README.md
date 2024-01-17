# mviewer-apps

Application Mviewer de megalis Bretagne

## Megalis Services

### Configuration

Deux fichiers de configurations doivent être créé sur l'environnement de déploiement :

1) Le fichier config.json
    * Copier le fichier config_template.json au même endroit
    * Le renommer en config.json
    * Remplacer la variable fqdn par le nom de domaine du mviewer

Exemple :
```
{
    "fqdn": "https://geobretagne.fr/"
}
```

2) le fichier config/configuration.js

    * Copier le fichier config/configuration_template.js au même endroit
    * Le renommer en configuration.js
    * Remplacer la variable CONFIG_FQDN par la même valeur que le fichier config.json 
Exemple : 
```
var CONFIG_FQDN = "https://geobretagne.fr/"
```



