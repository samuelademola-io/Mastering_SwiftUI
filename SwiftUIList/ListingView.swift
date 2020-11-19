//
//  ListingView.swift
//  SwiftUIList
//
//  Created by Samuel F. Ademola on 11/17/20.
//

import SwiftUI

struct ListingView: View {
    
    var restaurants = [
        Restaurant(name: "Cafe Deadend", image: "Cafe Deadend"),
        Restaurant(name: "Homei", image: "Homei"),
        Restaurant(name: "Teakha", image: "Teakha"),
        Restaurant(name: "Cafe Loisl", image: "Cafe Loisl"),
        Restaurant(name: "Petite Oyster", image: "Petite Oyster"),
        Restaurant(name: "For Kee Restaurant", image: "For Kee Restaurant"),
        Restaurant(name: "Po's Atelier", image: "Po's Atelier"),
        Restaurant(name: "Bourke Street Bakery", image: "Bourke Street Bakery"),
        Restaurant(name: "Haigh's Chocolate", image: "Haigh's Chocolate"),
        Restaurant(name: "Palomino Espresso", image: "Palomino Espresso"),
        Restaurant(name: "Upstate", image: "Upstate"),
        Restaurant(name: "Traif", image: "Traif"),
        Restaurant(name: "Graham Avenue Meats And Deli", image: "Graham Avenue Meats And Deli"),
        Restaurant(name: "Waffle & Wolf", image: "Waffle & Wolf"),
        Restaurant(name: "Five Leaves", image: "Five Leaves"),
        Restaurant(name: "Five Leaves", image: "Five Leaves"),
        Restaurant(name: "Cafe Lore", image: "Cafe Lore"),
        Restaurant(name: "Confessional", image: "Confessional"),
        Restaurant(name: "Barrafina", image: "Barrafina"),
        Restaurant(name: "Donostia", image: "Donostia"),
        Restaurant(name: "Royal Oak", image: "Royal Oak"),
        Restaurant(name: "CASK Pub and Kitchen", image: "CASK Pub and Kitchen")
    ]
    
    
    var body: some View {
        VStack {
            TitleProfileView()
            
            
            List {
                ForEach(restaurants) { restaurant in
                    BasicImageView(restaurant: restaurant)
                    
                }
            }
        }
    }
}

struct FullImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        ZStack {
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            
        }
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}



struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView()
    }
}

struct TitleProfileView: View {
    var body: some View {
        HStack {
            Text("SwiftUI Restaurant")
                .font(.system(.title, design: .rounded))
                .bold()
            
            Spacer()
            
            Image("Profile Pic")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 0.5))
            //                    .shadow(radius: 1)
        }
        .padding()
    }
}

struct BasicImageView: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}
