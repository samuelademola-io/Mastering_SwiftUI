//
//  ButtonOneView.swift
//  SwiftUIButton
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonOneView: View {
    var body: some View {
        VStack {
            // 1
            Button(action: {
                // What to pefrom
                print("Hello World tapped!")
            }) {
                // How the button looks like
                Text("Hello World")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            // 2
            Button(action: {
                // What to pefrom
                print("Hello World tapped!")
            }) {
                // How the button looks like
                Text("Hello World")
                    .foregroundColor(Color.purple)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .border(Color.purple, width: 5)

            }
            // 3
            Button(action: {
                // What to pefrom
                print("Hello World tapped!")
            }) {
                // How the button looks like
                Text("Hello World")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .border(Color.purple, width: 5)

            }
            // 4
            Button(action: {
                // What to pefrom
                print("Hello World tapped!")
            }) {
                // How the button looks like
                Text("Hello World")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple, lineWidth: 5)
                    )
                
            }
        }
    }
    
}

struct ButtonOneView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOneView()
    }
}

