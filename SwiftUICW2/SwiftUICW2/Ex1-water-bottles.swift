//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI
        
struct Exercise1: View {
    @State var name = ""
    @State var bottelNum = 1
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Stepper("how many water bottels you want to drink ? : \(bottelNum)", value : $bottelNum , in : 2...7 )
                    .padding()
                TextField(" enter your name" , text: $name).disableAutocorrection(true)
                    .padding()
                Spacer()
                Text("Im \(name) and I swear to drink \(bottelNum) bottels of water daily ")
                    .font(.custom("BebasNeue-Regular", size:45))
                    .padding()
                Spacer()        
            }.padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
            .previewDevice("iPhone 11")
    }
}
