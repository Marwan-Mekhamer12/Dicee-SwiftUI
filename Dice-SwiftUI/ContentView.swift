//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Marwan Mekhamer on 20/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State  var rightDiceNumber = 2
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("shape")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        
                }
                .background(Color.red)
                Spacer()

                }
            }
        }
        
}

struct DiceView: View {
    let n: Int
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


