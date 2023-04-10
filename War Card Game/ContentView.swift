//
//  ContentView.swift
//  War Card Game
//
//  Created by Chinmay Chaudhari on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    var body: some View {
        
        ZStack {
        Image("background-plain")
            VStack {
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
                }label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                    }.font(.headline)
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                    }.font(.headline)
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }.ignoresSafeArea()
        
        
        
    }
    func deal(){
        var a = Int.random(in: 2...14)
        var b = Int.random(in: 2...14)
        playerCard = "card" + String(a)
        cpuCard = "card" + String(b)
        if(a>b){
            playerScore += 1
        }
        else if(b>a){
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

