import Foundation

public struct Apartment {
    public var gym: Bool
    public var school: Bool
    public var store: Bool
    public var office: Bool
    public var gymDist = 10000
    public var schoolDist = 10000
    public var storeDist = 10000
    public var officeDist = 10000
    
    public init(gym: Bool, school: Bool, store: Bool, office: Bool) {
        self .gym = gym
        self.school = school
        self.store = store
        self.office = office
    }
}



public struct Block {
    public var apartments: [Apartment]
    public var minimumDistance = 1000000
    public var optimumApartment = 0
    
    public init(apartments: [Apartment]) {
        self.apartments = apartments
        getMinimimumDistances()
        print(self.apartments)
        /*
        for index in 0..<apartments.count {
            calculateDistance(for: index)
            if(self.apartments[index].distance < self.minimumDistance) {
                self.minimumDistance = self.apartments[index].distance
                self.optimumApartment = index
            }
        }
        print("Apartment \(optimumApartment) is optimum with distance of \(minimumDistance)")
        */
    }
    /*
    mutating func calculateDistance(for index: Int) {
        let count = apartments.count
        var result = 0
        
        //Gym
        if(self.apartments[index].gym != true) {
            //Deal with right
            if (index < count - 1) {
                for itr in ((index + 1)..<count) {
                    if(apartments[itr].gym) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
            //Deal with left
            if (index > 0) {
                for itr in ((0)..<index) {
                    if(apartments[itr].gym) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
        }
        
        //School
        if(self.apartments[index].school != true) {
            //Deal with right
            if (index < count - 1) {
                for itr in ((index + 1)..<count) {
                    if(apartments[itr].school) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
            //Deal with left
            if (index > 0) {
                for itr in ((0)..<index) {
                    if(apartments[itr].school) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
        }
        
        //Store
        if(self.apartments[index].store != true) {
            //Deal with right
            if (index < count - 1) {
                for itr in ((index + 1)..<count) {
                    if(apartments[itr].store) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
            //Deal with left
            if (index > 0) {
                for itr in ((0)..<index) {
                    if(apartments[itr].store) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
        }
        
        //Office
        if(self.apartments[index].office != true) {
            //Deal with right
            if (index < count - 1) {
                for itr in ((index + 1)..<count) {
                    if(apartments[itr].office) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
            //Deal with left
            if (index > 0) {
                for itr in ((0)..<index) {
                    if(apartments[itr].office) {
                        let currentDistance = abs(itr - index)
                        if(result < currentDistance) {
                            result = currentDistance
                        }
                        break
                    }
                }
            }
        }
        
        self.apartments[index].distance = result
    }
     */
    
    mutating func getMinimimumDistances() {
        for index in (0..<self.apartments.count) {
            if(self.apartments[index].gym) {
                self.apartments[index].gymDist = 0
                if(index < self.apartments.count - 1) {
                self.apartments[index + 1].gymDist = 1
                }
                if(index > 0) {
                    self.apartments[index - 1].gymDist = 1
                }
            }
            if(self.apartments[index].school) {
                self.apartments[index].schoolDist = 0
                if(index < self.apartments.count - 1) {
                self.apartments[index + 1].schoolDist = 1
                }
                if(index > 0) {
                    self.apartments[index - 1].schoolDist = 1
                }
            }
            if(self.apartments[index].store) {
                self.apartments[index].storeDist = 0
                if(index < self.apartments.count - 1) {
                self.apartments[index + 1].storeDist = 1
                }
                if(index > 0) {
                    self.apartments[index - 1].storeDist = 1
                }
            }
            if(self.apartments[index].office) {
                self.apartments[index].officeDist = 0
                if(index < self.apartments.count - 1) {
                self.apartments[index + 1].officeDist = 1
                }
                if(index > 0) {
                    self.apartments[index - 1].officeDist = 1
                }
            }
        }
        
        for index in (0..<self.apartments.count) {
            if (self.apartments[index].gymDist > 1) {
                
            }
        }
    }
}



