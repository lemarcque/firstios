//
//  ContentView.swift
//  Landmarks
//
//  Created by Henoc Sese on 22.10.19.
//  Copyright © 2019 Capsulo Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // Map
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            // Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Text
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
            
                HStack {
                    Text("Joshua Tree National Parks")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
                
            }.padding()
            
            // Space
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
