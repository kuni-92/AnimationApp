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
            Spacer()
            Button("Animation Start") {
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
