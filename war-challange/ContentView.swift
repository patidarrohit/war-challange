//
//  ContentView.swift
//  war-challange
//
//  Created by Rohit Patidar on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back"
    @State var playerScore = 0
    @State var cpuCard = "back"
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background").resizable(resizingMode: .stretch).ignoresSafeArea()
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
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    } else if playerRand < cpuRand{
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                Button {
                    playerCard = "back"
                    cpuCard = "back"
                    playerScore = 0
                    cpuScore = 0
                    
                } label: {
                    Text("Reset")
                        .font(.title2)
                        .foregroundColor(Color.white)
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
