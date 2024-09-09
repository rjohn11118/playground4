struct car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int {
        didSet{
            if currentGear > 6 {
                currentGear = 6
            }
            else if currentGear < 1{
                currentGear = 1
            }
        }
    }
    
    init(model: String, numberOfSeats: Int, initialGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = initialGear
    }
    
   
    mutating func gearUp(){
        if currentGear < 6{
            currentGear += 1
        }
    }
    
    
    mutating func gearDown(){
        if currentGear > 1{
            currentGear -= 1
        }
    }

}

var carData = car(model: "Ford Mustang", numberOfSeats: 2, initialGear: 3)

carData.gearUp()
carData.gearDown()
carData.gearDown()

print(carData.model)
print(carData.currentGear)



    
