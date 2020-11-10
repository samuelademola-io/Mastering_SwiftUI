//
//  ContentView.swift
//  SwiftUIState
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ContentView: View {
    @State private var counterBlue = 1
    @State private var counterRed = 1
    @State private var counterGreen = 1
    
    var body: some View {
        VStack {
           Text("\(counterRed + counterBlue + counterGreen)")
            .font(.system(size:220, weight: .bold, design: .rounded))
            HStack {
                CounterButton(smCounter: $counterRed, color: .red)
                CounterButton(smCounter: $counterBlue, color: .blue)
                CounterButton(smCounter: $counterGreen, color: .green)
            }
        }
    }
}


struct CounterButton: View {
    
    @Binding var smCounter: Int
    
    var color: Color
    
    var body: some View {
        
        Button (action: {
            // What button will do
            self.smCounter += 1
        }) {
            // What button will look
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .overlay(
                    Text("\(smCounter)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
