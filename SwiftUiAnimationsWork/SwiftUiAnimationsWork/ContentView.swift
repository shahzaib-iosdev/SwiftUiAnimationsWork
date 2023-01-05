//
//  ContentView.swift
//  SwiftUiAnimationsWork
//
//  Created by CrownSDS on 04/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var moveOnCircularPath: Bool = false

    @State var isAnimating: Bool = false
    @State private var moveIt = false
    var body: some View
    {
        VStack
        {
            
                ZStack
                {
                    Circle()
                    .stroke()
                    .frame(width: 75, height: 75)
                    .opacity(0)
                    
                    roundRect()
                    .foregroundColor(.gray)
                    .rotationEffect(.degrees(moveOnCircularPath ? 0: -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    roundRect()
                    .foregroundColor(.yellow)
                    .rotationEffect(.degrees(moveOnCircularPath ? -135 : -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    
                    roundRect()
                    .foregroundColor(.green)
                    .rotationEffect(.degrees(moveOnCircularPath ? -90: -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    
                    
                    roundRect()
                    .foregroundColor(.green)
                    .rotationEffect(.degrees(moveOnCircularPath ? -45: -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    
                    
                    roundRect()
                    .foregroundColor(.red)
                    .rotationEffect(.degrees(moveOnCircularPath ? 135 : -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    roundRect()
                    .foregroundColor(.pink)
                    .rotationEffect(.degrees(moveOnCircularPath ? 90: -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    roundRect()
                    .foregroundColor(.purple)
                    .rotationEffect(.degrees(moveOnCircularPath ? 45: -180))
                    .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                    roundRect()
                        .foregroundColor(.blue)
                        .rotationEffect(.degrees(moveOnCircularPath ?  180: -180))
                        .animation(Animation.easeInOut(duration: 1.7).repeatForever(autoreverses: false))
                }.scaleEffect(2.8)
            
            .padding(.bottom,250)
            
            
            RoundedRectangle(cornerRadius: 35)
                .fill(Color.black)
                .frame(width: 70,height: 70)
                .shadow(color: Color.red, radius: 3,x: CGFloat(5))
                .rotationEffect(.degrees(moveOnCircularPath ? 0 : -360))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .padding(.bottom,30)
            
            Button("Click me")
            {
                self.moveOnCircularPath.toggle()
                self.moveIt.toggle()
            }
            .frame(width: 100, height: 40)
            .font(.headline)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.purple, lineWidth: moveOnCircularPath ? 3:1)
                    .shadow(color: Color.red, radius: 3,x: CGFloat(5))
                    
                    //.rotationEffect(.degrees(moveOnCircularPath ? 0 : -360))
                    .animation(.easeInOut(duration: 2).repeatForever(),value: moveOnCircularPath)
            )
            
                
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct roundRect: View {
    var body: some View {
        Capsule()
            .offset(y: 38)
            .frame(width: 50, height: 50)
            .opacity(0.6)
    }
}
