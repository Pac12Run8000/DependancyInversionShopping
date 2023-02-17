//
//  ContentView.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cart = ShoppingCart()
    let items = ["Winning", "Cleto Reyes", "Grant", "Title", "Ringside"]
        
    
    var body: some View {
            VStack {
                Text("Shopping Cart")
                    .font(.title)
                Spacer()
                    .frame(height: 20)
                ForEach (items, id:\.self) { item in
                    HStack {
                        Text("\(item)")
                            .font(.headline)
                        Spacer()
                        Text("$49.99")
                            .font(.headline)
                        Button("Add to Cart") {
                            // Add to cart functionality here
                            
                            print("Button Click")
                            cart.addItem(item: item)
                        }
                    }
                }
                
                
                Spacer()
                    .frame(height: 20)
                HStack {
                    VStack {
                        Text("Total")
                            .font(.title)
                        
                    }
                    .border(Color.red, width:3)
                    Spacer()
                        .frame(width: 30)
                    
                    
                    VStack {
                        Text("My Items")
                            .font(.title)
                        ForEach(cart.items, id:\.self) { cItem in
                            Text("Product Name: \(cItem)")
                                .font(.headline)
                        }
                    }
                }
            }
            .border(Color.black, width: 3)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
