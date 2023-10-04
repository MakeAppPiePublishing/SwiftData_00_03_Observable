//
//  InputView.swift
//  04_02_Observable
//
//  Created by Steven Lipton on 10/1/23.
//

import Foundation
import SwiftUI

struct InputView:View{
    @Bindable var rating:PizzaRating
    var body: some View{
        Form{
            TextField("Pizza name", text: $rating.pizzaName)
            Stepper("Pizza Rating \(rating.rating)", value: $rating.rating)
        }
    }
}

#Preview {
    InputView(rating: PizzaRating(pizzaName: "Garlic", rating: 6))
}
