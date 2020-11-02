//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Samuel F. Ademola on 9/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image(systemName: "cloud.heavyrain")
//            .font(.system(size: 100))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
//            .padding()
        
        Image("paris")
            .resizable()
//            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            .scaledToFit()
            // This is the same as .scaledToFIt()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 300)
        
            .aspectRatio(contentMode: .fit)
//            .frame(width: 300)
//            .clipped()
//            .clipShape(Ellipse())
//            .clipShape(Capsule())
//              .clipShape(Circle())
//            .opacity(0.5)
//            .overlay(
//                Image(systemName: "heart.fill")
//                    .font(.system(size: 50))
//                    .foregroundColor(.black)
//                    .opacity(0.5)
//            )
//            .overlay(
//                Text("IF you are lucky enough to have lived in Paris as a young man, then wherver you go for the rest of your life it stays with you, for Paris is a moveable feast. \n\n- Ernest Hemingway")
//                    .fontWeight(.heavy)
//                    .font(.system(.headline, design: .rounded))
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.black)
//                    .cornerRadius(10)
//                    .opacity(0.8)
//                    .padding(), alignment: .top
//
//        )
            
            
            
//            .overlay(
//                Rectangle()
//                    .foregroundColor(.black)
//                    .opacity()
//            )
        
        
            .overlay(
                Color.black
                    .opacity(0.4)
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                    )
                
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

