//
//  CardView.swift
//  FirstProject
//
//  Created by Henoc Sese on 19.04.20.
//  Copyright © 2020 Capsulo Inc. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbols: String
    @Binding var backgrounds: Color
    
    var body: some View {
         Image(symbols)
           .resizable()
           .aspectRatio(1, contentMode: .fit)
           .background(backgrounds.opacity(0.5))
           .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            symbols: Binding.constant("cherry"),
            backgrounds: Binding.constant(Color.white)
        )
    }
}
