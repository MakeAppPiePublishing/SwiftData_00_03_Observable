//
//  RatingsRowView.swift
//  04_02_Observable
//
//  Created by Steven Lipton on 10/1/23.
//

import SwiftUI

struct RatingsRowView: View {
    @Bindable var rating:PizzaRating
    var body: some View {
        HStack{
            Text(rating.pizzaName)
            Spacer()
            Text(rating.rating,format: .number)
        }
    }
}

#Preview {
    RatingsRowView(rating: PizzaRating(pizzaName: "Mad Galric", rating: 6))
}
