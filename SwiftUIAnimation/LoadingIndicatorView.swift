//
//  LoadingIndicatorView.swift
//  SwiftUIAnimation
//
//  Created by Samuel F. Ademola on 11/13/20.
//

import SwiftUI

struct LoadingIndicatorView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.green, lineWidth: 7)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.default.repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
            }
                .padding()
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.green, lineWidth: 7)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
            }
                .padding()
            
            ZStack {
                Circle()
                    .stroke(Color(.systemGray5), lineWidth: 14)
                    .frame(width: 150, height: 150)
                
                Circle()
                    .trim(from: 0, to: 0.2)
                    .stroke(Color.green, lineWidth: 7)
                    .frame(width: 150, height: 150)
                    .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.isLoading = true
                    }
            }
            .padding()
            
            ZStack {
                Text("Loading")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .offset(x: 0, y: -15)
                
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.systemGray5), lineWidth: 5)
                    .frame(width: 250, height: 3)
                
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.green, lineWidth: 3)
                    .frame(width: 45, height: 3)
                    .offset(x: isLoading ? 100 : -110, y: 0)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            }
            .onAppear(){
                self.isLoading = true
            }
        }
    }
}

struct LoadingIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicatorView()
    }
}
