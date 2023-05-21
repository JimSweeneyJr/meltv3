//
//  SwiftUIView.swift
//  MeltFoodApp
//
//  Created by James Sweeney on 5/5/23.
//


import UIKit
import Amplify


//MARK: - DATA
struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let bio: String
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "Chicken Tacos", imageName: "Tacos",  bio: "Streetfood Fire"),
            Card(name: "Prime Rib", imageName: "Steak", bio: "I Love Meat"),
            Card(name: "French Toast", imageName: "FrenchToast", bio: "Breakfast Love"),
            Card(name: "Chicken Sandwich", imageName: "ChickenSandwich",  bio: "Law grad"),
            Card(name: "Pesto Pasta", imageName: "BowtiePasta", bio: "Pasta for Lyfe"),
            Card(name: "Pan Seared Salmon", imageName: "Salmon", bio: "Fish Fresh"),
            Card(name: "CurryFish", imageName: "CurryFish", bio: "Spicy Ocean"),
            Card(name: "Cheeseburger", imageName: "Cheeseburger", bio: "BIGFAT BURGER"),
            Card(name: "Yummy Ramen", imageName: "Ramen", bio: "Noodle")
        ]
    }
    
}
