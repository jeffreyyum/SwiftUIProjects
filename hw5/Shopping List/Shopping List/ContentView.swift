//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section(header: Text("Fruits")) {
                    ForEach(list[0...2]) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(list[3...4]) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
                Section(header: Text("Other")) {
                    ForEach(list[5...6]) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                
            }.navigationTitle("Shopping List")
            
            
            
            
            
        }
        
    }
    
    var list = [Items(image: "banana", item: "Bananas", quant: 3),
                Items(image: "apple", item: "Apples", quant: 4),
                Items(image: "avocado", item: "Avocados", quant: 3),
                Items(image: "carrot", item: "Carrots", quant: 4),
                Items(image: "eggplant", item: "Eggplants", quant: 4),
                Items(image: "milk", item: "Milk", quant: 1),
                Items(image: "eggs", item: "Eggs", quant: 12),
    ]
    
    class Items: Identifiable {
        let imageName: String
        let itemName: String
        let quantity: Int
        
        init(image: String, item: String, quant: Int) {
            self.imageName = image
            self.itemName = item
            self.quantity = quant
        }
    }
}
