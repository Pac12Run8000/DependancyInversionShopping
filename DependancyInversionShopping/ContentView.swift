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
                HStack {
                    Text("Boxing Gloves")
                        .font(.headline)
                    Spacer()
                    Text("$49.99")
                        .font(.headline)
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                HStack {
                    Text("Winning")
                    Spacer()
                    Text("$149.99")
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                HStack {
                    Text("Cleto Reyes")
                    Spacer()
                    Text("$129.99")
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                HStack {
                    Text("Grant")
                    Spacer()
                    Text("$99.99")
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                HStack {
                    Text("Title")
                    Spacer()
                    Text("$79.99")
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                HStack {
                    Text("Ringside")
                    Spacer()
                    Text("$59.99")
                    Button("Add to Cart") {
                        // Add to cart functionality here
                    }
                }
                .border(Color.gray, width: 1)
                Spacer()
                    .frame(height: 20)
                HStack {
                    Text("Total")
                        .font(.title)
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
