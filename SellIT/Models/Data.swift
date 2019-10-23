//
//  Data.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 14/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
class Data {
    static let categoriesArray : [Category] = [
        Category(name: "Mobile", image: "mobile"),Category(name: "Furniture", image: "mobile"),Category(name: "Lifestyle", image: "mobile"),Category(name: "Bikes", image: "mobile"),Category(name: "Homes", image: "mobile"),Category(name: "Education", image: "mobile"),Category(name: "Services", image: "mobile"),Category(name: "Electronics", image: "mobile"),Category(name: "Cars", image: "mobile"),Category(name: "Jobs", image: "mobile"),Category(name: "Salon at Home", image: "mobile"),Category(name: "Pets", image: "mobile"),Category(name: "Entertainment", image: "mobile")]
    
    static let assuredArray : [Assured] = [
    Assured(name: "Mobile", image: "furniture"),Assured(name: "Furniture", image: "furniture"),Assured(name: "Lifestyle", image: "furniture"),Assured(name: "Bikes", image: "furniture"),Assured(name: "Homes", image: "furniture"),Assured(name: "Education", image: "furniture"),Assured(name: "Services", image: "furniture"),Assured(name: "Electronics", image: "furniture"),Assured(name: "Cars", image: "furniture"),Assured(name: "Jobs", image: "furniture"),Assured(name: "Salon at Home", image: "furniture"),Assured(name: "Pets", image: "furniture"),Assured(name: "Entertainment", image: "furniture")]
    
    static let carArray : [Car] = [Car(name: "Red 2016 Hyundai Grand i10 Asta 1.2 Kappa VTVT o - 25000 kms driven in Jayanagar", image: "car_tmp", price: "4,85,000"), Car(name: "Red 2016 Hyundai Grand i10 Asta 1.2 Kappa VTVT o - 25000 kms driven in Jayanagar", image: "car_tmp", price: "4,85,000"), Car(name: "Red 2016 Hyundai Grand i10 Asta 1.2 Kappa VTVT o - 25000 kms driven in Jayanagar", image: "car_tmp", price: "4,85,000"), Car(name: "Red 2016 Hyundai Grand i10 Asta 1.2 Kappa VTVT o - 25000 kms driven in Jayanagar", image: "car_tmp", price: "4,85,000"), Car(name: "Red 2016 Hyundai Grand i10 Asta 1.2 Kappa VTVT o - 25000 kms driven in Jayanagar", image: "car_tmp", price: "4,85,000")]
    
    static let jobArray : [Job] = [Job(type: "Marketing", name: "Hiring for Marketing Executive for Internetional market work position", company: "Causeway pvt ltd", place: "Banaswadi, bangalore", salaryRange: "$ 20,000 - $ 25,000"), Job(type: "Accountant", name: "Hiring for Accountant Executive for Internetional position", company: "Causeway pvt ltd", place: "Whitefield, bangalore", salaryRange: "$ 25,000 - $ 30,000"), Job(type: "Waiter/Stewar", name: "Hiring for Stewar Executive for Internetional position", company: "Donseed pvt ltd", place: "Indiranagar, bangalore", salaryRange: "$ 20,000 - $ 25,000")]
    
    static let updateArray : [NewUpdates] = [NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates"),NewUpdates(image: "updates")]
   
}
