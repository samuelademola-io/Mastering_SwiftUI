//
//  ButtonTwoView.swift
//  SwiftUIButton
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonTwoView: View {
    var body: some View {
        VStack {
            
            // 1
            Button(action: {
                // How the button will peform
                print("Delete button tapped!")
            }){
                // How the button will look
                Image(systemName: "trash")
                    .padding()
                    .background(Color.red)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            // 2
            Button(action: {
                // How the button will peform
                print("Delete button tapped!")
            }){
                // How the button will look
                HStack {
                    Image(systemName: "trash")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
            }
            
            // 3
            Button(action: {
                // How the button will peform
                print("Delete button tapped!")
            }){
                // How the button will look
                Label(
                    title: { Text("Delete")
                        .fontWeight(.semibold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    },
                    icon: { Image(systemName: "trash")
                        .font(.title)
                    }
                )
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
            }
        }
    }
}

struct ButtonTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTwoView()
    }
}
