//
//  ContentView.swift
//  04_02_Observable
//
//  Created by Steven Lipton on 10/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var pizzaRatings:[PizzaRating] = [PizzaRating()]
    var body: some View {
        VStack {
            List{
                ForEach(pizzaRatings){ item in
                    RatingsRowView(rating: item)
                }
            }
            InputView(rating: pizzaRatings.last!)
            Button("More Ratings"){
                let newPizza = PizzaRating()
                pizzaRatings.append(newPizza)
            }.font(.title).bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
