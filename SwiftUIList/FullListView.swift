//
//  FullListView.swift
//  SwiftUIList
//
//  Created by Samuel F. Ademola on 11/18/20.
//

import SwiftUI


struct FullListView: View {
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

struct FullListView_Previews: PreviewProvider {
    static var previews: some View {
        FullListView(restaurant: _)
    }
}


