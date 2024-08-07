var vm = new Vue({
    el: "#gamesApp",
    data: {
    appName: "Games App",
    userName: "JOHNNY LONNY",
    games: [],
    selYear: "Year...",
    selPlatform: "Platform..."
    },
    computed: {
        years: function () {
            var list = [];
            this.games.forEach(function (g) {
                if (!(list.includes(g.year))) {
                    list.push(g.year);
                }
            });
            return list;
        },
        platforms: function () {
            var list = [];
            this.games.forEach(function (g) {
                if (!(list.includes(g.platform))) {
                    list.push(g.platform);
                }
            });
            return list;
        },
        filtered: function () {
            var filtered=[]
            var self = this;
            this.games.forEach(function (g) {
                if ((self.selYear==="Year..." || g.year===self.selYear)
            && (self.selPlatform==="Platform..." || g.platform===self.selPlatform)) {
                    filtered.push(g);
                }
            });
            return filtered;
        }
    }
        
})


class Game {
    // Private fields
    #id; #name; #year; #platform;
    //Constructor
    constructor(id, name, year, platform) {
        this.#id = id;
        this.#name = name;
        this.#year = year;
        this.#platform = platform;
    }
    
    //Getters
    get id() { return this.#id; }
    get name() { return this.#name; }
    get year() { return this.#year; }
    get platform() { return this.#platform; }
}

let game1 = new Game(1,"game fixe", 2016,"XBOX");
let game2 = new Game(2,"game ultra fixe", 2022,"PS2");
let game3 = new Game(3,"game ultra fixe fixolas", 2024,"PS3");
vm.games.push(game1)
vm.games.push(game2)
vm.games.push(game3)

    