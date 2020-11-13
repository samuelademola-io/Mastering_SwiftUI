//
//  ShapesView.swift
//  SwiftUIShape
//
//  Created by Samuel F. Ademola on 11/12/20.
//

import SwiftUI

struct ShapesView: View {
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 107/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 200, height: 200)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                )
                .padding()
            
            ZStack {
                Circle()
                    .stroke(Color(.systemGray6), lineWidth: 20)
                    .frame(width: 200, height: 200)
                
                Circle()
                    .trim(from: 0, to: 0.85)
                    .stroke(purpleGradient, lineWidth: 20)
                    .frame(width: 200, height: 200)
                    .overlay(
                        VStack {
                            Text("85%")
                                .font(.system(size: 45, weight: .bold, design: .rounded))
                                .foregroundColor(Color(.systemGray))
                            Text("Complete")
                                .font(.system(.body, design: .rounded))
                                .bold()
                                .foregroundColor(Color(.systemGray))
                        }
                    )
            }
            Spacer()
            
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.4)
                    .stroke(Color(.systemBlue), lineWidth: 45)
                
                Circle()
                    .trim(from: 0.4, to: 0.6)
                    .stroke(Color(.systemTeal), lineWidth: 45)
                
                Circle()
                    .trim(from: 0.6, to: 0.75)
                    .stroke(Color(.systemPurple), lineWidth: 45)
                
                Circle()
                    .trim(from: 0.75, to: 1)
                    .stroke(Color(.systemYellow), lineWidth: 55)
                    .overlay(
                        Text("25%")
                            .font(.system(.title3, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: 90, y: -55)
                    )
            }
            .frame(width: 200, height: 200)
        }
        
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
