//
//  ChartView.swift
//  SwiftUIShape
//
//  Created by Samuel F. Ademola on 11/10/20.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        VStack {
            Path() { path in
                path.move(to: CGPoint(x: 180, y: 180))
                path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90), clockwise: true)
            }
            .fill(Color.green)
            
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                }
                .fill(Color(.systemYellow))
                
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
                }
                .fill(Color(.systemTeal))
                
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                }
                .fill(Color(.systemBlue))
                
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
                }
                .fill(Color(.systemPurple))
                .offset(x: 20, y: 20)
                
                Path() { path in
                    path.move(to: CGPoint(x: 180, y: 180))
                    path.addArc(center: .init(x: 180, y: 180), radius: 120, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(Color(red: 32/255, green: 52/255, blue: 122/255), lineWidth: 5)
                .offset(x: 20, y: 20)
                .overlay(
                    Text("25%")
                        .font(.system(.title2, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 65, y: 70)
                )
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
