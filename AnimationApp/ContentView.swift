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
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .scaleEffect(scaleFlag ? 1.0 : 2.0)
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .scaleEffect(scaleFlag ? 1.0 : 0.5)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: scaleFlag ? 0 :180))
                .animation(.spring(), value: self.scaleFlag)
            Rectangle()
                .fill(Color.brown)
                .frame(width: 100, height: 100)
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 180, y: 240, z: 180))
                .animation(.spring(), value: self.scaleFlag)
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
