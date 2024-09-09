class Animal {
    var legs: Int

    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof im a regular dog")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark im a corgi.")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof im a poodle.")
    }
}

class Cat: Animal {
    var isTame: Bool

    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }

    func speak() {
        print("Meow im regular cat")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow im a persian cat")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar im a lion")
    }
}


let myCorgi = Corgi(legs: 4)
myCorgi.speak()

let myPoodle = Poodle(legs: 4)
myPoodle.speak()

let myPersian = Persian(legs: 4, isTame: true)
myPersian.speak()

let myLion = Lion(legs: 4, isTame: false)
myLion.speak()

