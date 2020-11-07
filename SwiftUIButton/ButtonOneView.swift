//
//  ButtonOneView.swift
//  SwiftUIButton
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonOneView: View {
    var body: some View {
        Button(action: {
            // What to pefrom
            print("Hello World tapped!")
        }) {
            // How the button looks like
            Text("Hello World")
                .background(Color.purple)
                .foregroundColor(Color.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
    
}

struct ButtonOneView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOneView()
    }
}

