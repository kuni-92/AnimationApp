//
//  ContentView.swift
//  AnimationApp
//  
//  Created by kunihiro on 2022/06/05
//  
//

import SwiftUI

struct ContentView: View {
    @State private var scaleFlag: Bool = true
    var body: some View {
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .scaleEffect(scaleFlag ? 1.0 : 0.5)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: scaleFlag ? 0 :180))
                .animation(.spring(), value: self.scaleFlag)
            Circle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
                .offset(x: self.scaleFlag ? -100 : 100, y: 100)
                .animation(.linear(duration: 1.0).repeatForever(), value:self.scaleFlag)
            Spacer()
            Button("Flag ON") {
                withAnimation {
                    self.scaleFlag.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
