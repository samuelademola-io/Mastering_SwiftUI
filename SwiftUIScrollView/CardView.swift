//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Samuel F. Ademola on 11/6/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            Image("swiftui-button")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            HStack {
                VStack(alignment: .leading ) {
                    Text("SwiftUI")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text("Drawing a Borer with Rounded Corners")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    Text("Written by Samuel F. Ademola".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        
        // OVERLAY CODE OVER THE PARENT V-STACK
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
