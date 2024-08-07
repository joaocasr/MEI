let mygame2 = {};
mygame2.name = "Oxenfree";
mygame2.year = 2017;


class MyGame {
    #name; #year;

    // constructor
    constructor(aName, aYear) {
        this.#name = aName;
        this.#year = aYear;
    }

    get name() {
        return this.#name;
    }
    
    // setter for _name
    set name(v) {
        this.#name = v;
    }

    hasYear(aYear) {
        return this.#year===aYear;
    }    

    moreRecent(mygame2){
        return this.#year<=game.#year
    }
}

let game = new MyGame("Oxenfree", 2016);
console.log(game.name); // uses the get method
console.log(game.hasYear(2017));