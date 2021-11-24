//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Ratti on 24/11/21.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
        }//: ZStack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                self.isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: arrFruit.first!).previewLayout(.fixed(width: 375, height: 440))
    }
}
