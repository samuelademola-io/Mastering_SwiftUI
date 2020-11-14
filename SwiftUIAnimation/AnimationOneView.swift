//
//  AnimationOneView.swift
//  SwiftUIAnimation
//
//  Created by Samuel F. Ademola on 11/13/20.
//

import SwiftUI

struct AnimationOneView: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizedChanged = false
    
    
    var body: some View {
        VStack {
            
            // IMPLICIT
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(circleColorChanged ? Color(.systemGray5) : .green)
                //                .animation(.default)
                
                Image(systemName: "heart.fill")
                    .foregroundColor(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
                    .scaleEffect(heartSizedChanged ? 1.0 : 0.5)
                //                .animation(.default)
            }
            //        .animation(.default)
            .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3))
            .onTapGesture {
                self.circleColorChanged.toggle()
                self.heartColorChanged.toggle()
                self.heartSizedChanged.toggle()
            }
            
            
            // EXPLICIT
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(circleColorChanged ? Color(.systemGray5) : .purple)
                
                Image(systemName: "heart.fill")
                    .foregroundColor(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
                    .scaleEffect(heartSizedChanged ? 1.0 : 0.5)
            }
            .onTapGesture {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                    self.circleColorChanged.toggle()
                    self.heartColorChanged.toggle()
                }
                self.heartSizedChanged.toggle()
            }
        }
    }
}

struct AnimationOneView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationOneView()
    }
}
