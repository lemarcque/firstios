//
//  ContentView.swift
//  FirstProject
//
//  Created by Henoc Sese on 21.10.19.
//  Copyright © 2019 Capsulo Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    private var betAmount = 5
    
    @State private var symbols = ["apple", "star", "cherry"]
    @State private var numbers = [0, 1, 2]
    @State private var backgrounds = [Color.white.opacity(0.5), Color.white.opacity(0.5), Color.white.opacity(0.5)]
    @State private var credits:Int = 1000
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
            .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
            .rotationEffect(Angle(degrees: 45))
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                 Spacer()
                
                // Title
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                    .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                // Credits counter
                Text("Credits: " + String(self.credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                 Spacer()
                
                // Cards
                HStack {
                    Spacer()
                    
                    CardView(symbols: $symbols[numbers[0]],
                             backgrounds: $backgrounds[0])
                    CardView(symbols: $symbols[numbers[1]], backgrounds: $backgrounds[1])
                    CardView(symbols: $symbols[numbers[2]], backgrounds: $backgrounds[2])
                    
                    Spacer()
                }
                
                 Spacer()
                
                // Button
                Button(action: {
                    
                    // set background
                    self.backgrounds =  self.backgrounds.map { _ in Color.white }
                    
                    // Change the images
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    // Check wining
                    if(self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]) {
                        self.credits += self.betAmount
                        
                        // Update background
                        self.backgrounds[0] = Color.green
                        self.backgrounds[1] = Color.green
                        self.backgrounds[2] = Color.green
                    }
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                }
                
                Spacer()
            }
            
          
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
