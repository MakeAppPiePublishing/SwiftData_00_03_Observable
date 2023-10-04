//
//  PizzaRating.swift
//  04_02_Observable
//
//  Created by Steven Lipton on 10/1/23.
//

import Foundation

@Observable
class PizzaRating:Identifiable{
    var id:UUID
    var pizzaName:String
    var rating:Int
    
    init(pizzaName: String = "", rating: Int = 0) {
        self.id = UUID()
        self.pizzaName = pizzaName
        self.rating = rating
    }
    
}
