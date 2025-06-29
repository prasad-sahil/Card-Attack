//
//  ContentView.swift
//  Card Attack
//
//  Created by Sahil Prasad on 27/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var playerCard = "card2"
    @State var cpuCard = "card7"
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                }label:{
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                            .padding()
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                            .padding()
                    }
                    Spacer()
                }
                .font(.largeTitle)
                .fontWeight(.semibold)
                Spacer()
            }
        }
    }
    
    
    func deal(){
        //Card
        var card1 = Int.random(in:2...14)
        playerCard = "card" + String(card1)
        var card2 = Int.random(in:2...14)
        cpuCard = "card" + String(card2)
        
        //Output
        if card1>card2{
            playerScore += 1
        }
        else if card2>card1{
            cpuScore += 1
        }
        else{
            playerScore += 1
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
