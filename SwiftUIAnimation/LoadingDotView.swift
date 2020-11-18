//
//  LoadingDotView.swift
//  SwiftUIAnimation
//
//  Created by Samuel F. Ademola on 11/17/20.
//

import SwiftUI

struct LoadingDotView: View {
    @State private var isLoading = false
    
    var body: some View {
        HStack {
            ForEach(0...4, id: \.self) { index in
                Circle()
                    .frame(width: 10, height: 20)
                    .foregroundColor(.green)
                    .scaleEffect(self.isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 0.6).repeatForever().delay(0.5 * Double(index)))
            }
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

struct LoadingDotView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingDotView()
    }
}
