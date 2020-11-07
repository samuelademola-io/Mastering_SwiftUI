//
//  ButtonFourView.swift
//  SwiftUIButton
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonFourView: View {
    var body: some View {
        
        VStack {
            // 1
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
            }
            .buttonStyle(GradientBackgroundStyle())
            
            
            // 2
            Button(action: {
                // How the button will peform
                print("Edit button tapped!")
            }){
                // How the button will look
                Label(
                    title: { Text("Edit")
                        .fontWeight(.semibold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    },
                    icon: { Image(systemName: "square.and.pencil")
                        .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
            
            // 3
            Button(action: {
                // How the button will peform
                print("Share button tapped!")
            }){
                // How the button will look
                Label(
                    title: { Text("Edit")
                        .fontWeight(.semibold)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    },
                    icon: { Image(systemName: "square.and.arrow.up")
                        .font(.title)
                    }
                )
            }
            .buttonStyle(GradientBackgroundStyle())
        }
    }
}


// ButtonStyle Protocol, allows me to create button styles and attach them to multiple buttons
struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 10, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
        
        // When button is pressed
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct ButtonFourView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFourView()
    }
}
