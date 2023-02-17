//
//  ShoppingCart.swift
//  DependancyInversionShopping
//
//  Created by Michelle Grover on 2/17/23.
//

import Foundation


class ShoppingCart: ObservableObject, ShoppingCartProtocol {
    @Published var items: [String] = []
    @Published var total: Double = 0.0
    
    func addItem(item: String) {
        items.append(item)
        print("item: \(item) , items: \(items)")
    }
    
    func removeItem(item: String) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
    
    func getTotal() -> Double {
        // Calculate the total price of all items in the cart
        var total: Double = 0
        for item in items {
            total += getPriceForItem(item)
        }
        
        return total
    }
    
    // Private helper function to get the price of an item
    private func getPriceForItem(_ item: String) -> Double {
        var cost:Double = 0.00
        switch item {
        case "Winning Boxing":
            cost = 49.99
        case "Cleto Reyes":
            cost = 49.99
        case "Title":
            cost = 49.99
        case "Ringside":
            cost = 49.99
        default:
            cost = 49.99
        }
        return cost
    }
}
