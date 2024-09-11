const layerid = "services_organisme";
const cc = (function() {

    /*
    * Private
    */

    var _initialized = false;

    var _data = {};

    return {
        /*
        * Public
        */

        init: function () {
            // mandatory - code executed when layer is added to legend panel
            if (!_initialized) {
                fetch('https://data-api.megalis.bretagne.bzh/api/v1/stats/tauxNonPublie').then(function(response) {
                    if (response.ok) {
                        response.text().then(function(csv) {
                            let rows = csv.split("\n");
                            let headers = rows[0].split(",")
                            rows.forEach(function(row, id) {
                                if (id > 0) {
                                    let cells = row.split(",");
                                    _data[cells[0]] = {
                                        "nb_publie" : cells[1],
                                        "nb_non_publie" : cells[2],
                                        "taux_non_publie" : cells[3]
                                    }
                                }
                            })
                            _initialized = true;
                        })
                    }

                })
            }
        },

        getStats: function (siren) {
            return _data[siren];
        },

        destroy: function () {
            // mandatory - code executed when layer panel is closed
            _initialized = false;
        }
    };

}());
new CustomControl(layerid, cc.init, cc.destroy);
mviewer.customControls[layerid].getStats = cc.getStats;