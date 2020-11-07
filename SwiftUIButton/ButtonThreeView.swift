//
//  ButtonThreeView.swift
//  SwiftUIButton
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonThreeView: View {
    var body: some View {
        
        // 1
        VStack {
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
                .background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(40)
            }
            
            // 2
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
                .background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: .top, endPoint: .bottom))
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
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
                .shadow(radius: 5.0)
//                .shadow(color: .gray, radius: 20.0, x: 20, y: 10 )
            }
        }
    }
}

struct ButtonThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonThreeView()
    }
}
