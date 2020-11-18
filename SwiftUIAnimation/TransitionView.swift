//
//  TransitionView.swift
//  SwiftUIAnimation
//
//  Created by Samuel F. Ademola on 11/17/20.
//

import SwiftUI

struct TransitionView: View {
    @State private var show = false
    
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
                .overlay(
                    Text("Show Details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
            
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                    .overlay(
                        Text("Well, Here is The Details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                    )
//                    .transition(.scale(scale: 0, anchor: .bottom))
//                    .transition(.offset(x: -600, y: 0))
//                    .transition(AnyTransition.offset(x: -600, y: 0).combined(with: .scale))
//                    .transition(AnyTransition.offset(x: -600, y: 0).combined(with: .scale).combined(with: .opacity))
//                    .transition(.asymmetric(insertion: .scale(scale: 0, anchor: .bottom), removal: .offset(x: -600, y: 0)))
//                    .transition(.offsetScaleOpacity)
                    .transition(.scaleAndOffset)
            } 
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.show.toggle()
            }
            
        }
    }
}

extension AnyTransition {
    static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x: -600, y: 0).combined(with: .scale).combined(with: .opacity)
    }
}

extension AnyTransition {
    static var scaleAndOffset: AnyTransition {
        AnyTransition.asymmetric(insertion: .scale(scale: 0, anchor: .bottom), removal: .offset(x: -600, y: 00))
    }
}



struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
