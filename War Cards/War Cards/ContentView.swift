//
//  ContentView.swift
//  War Cards
//
//  Created by Andrei Ionascu on 15.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea(.all)
            VStack{
                Spacer()
                Image("logo")
                    Spacer()
                HStack{
                        Spacer()
                    Image("card" + String(randNum1))
                        Spacer()
                    Image("card" + String(randNum2))
                        Spacer()
                    
                }
                Button(action: {
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    if(self.randNum1 > self.randNum2){
                        playerScore += 1
                    }
                    if(self.randNum2 > self.randNum1){
                        cpuScore += 1
                    }
                }) {
                    Image("dealbutton")
                        .renderingMode(.original)
                }
                
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .foregroundColor(.white)
                        Text(String(playerScore))
                            .foregroundColor(.white)
                    }.padding(.leading)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .foregroundColor(.white)
                    }.padding(.trailing)
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
