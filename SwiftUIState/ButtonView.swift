//
//  PlayButtonView.swift
//  SwiftUIState
//
//  Created by Samuel F. Ademola on 11/7/20.
//

import SwiftUI

struct ButtonView: View {
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            // How button will work
        }) {
            // How button will look
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
