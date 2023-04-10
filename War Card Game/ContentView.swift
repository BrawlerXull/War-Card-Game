//
//  ContentView.swift
//  War Card Game
//
//  Created by Chinmay Chaudhari on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Image("background-plain")
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text("0")
                    }.font(.headline)
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text("0")
                    }.font(.headline)
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }.ignoresSafeArea()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

