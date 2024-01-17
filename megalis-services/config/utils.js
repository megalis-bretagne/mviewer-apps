function replace_fqdn(selector) {
    if (CONFIG_FQDN) {
        console.log("REPLACE URL")
        // Remplacement de l'attribut src
        $(selector).each(function() {
            var src = $(this).attr('src');

            if (!src.startsWith(CONFIG_FQDN))
                $(this).attr('src', CONFIG_FQDN + src)
        })
    }
}

// Sélection de la div avec l'ID "popup-content"
const targetNode = document.querySelector('#right-panel .popup-content');

// Configuration de l'observer avec une fonction de rappel (callback)
const observer = new MutationObserver(function(mutationsList, _observer) {
    // La fonction de rappel sera appelée quand des mutations sont détectées
    mutationsList.forEach(function(_mutation) {
        replace_fqdn('img.s-icon, img.icon, img.s-numberkey')
    });
});

// Configuration de l'observer pour surveiller les modifications du contenu de la div
const observerConfig = { attributes: true, childList: true, subtree: false };

// Démarre l'observation de la div cible avec la configuration spécifiée
observer.observe(targetNode, observerConfig);
