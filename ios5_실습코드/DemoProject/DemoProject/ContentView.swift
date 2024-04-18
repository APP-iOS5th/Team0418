//
//  ContentView.swift
//  DemoProject
//
//  Created by Heeji Jung on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnabled = true
    @State private var userName = ""
    let textLimit = 20
    var body: some View {
      
        VStack{
            Toggle(isOn: $wifiEnabled){
                Text("Enable wi-fi")
            }
            TextField("enter user name", text:$userName)
            Text(userName
                .prefix(textLimit))
            
            HStack(alignment:.center ) {
                Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
                    .font(.largeTitle)
                    .frame(height: 80)
                
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        
        /*HStack {
                Image(systemName: "airplane")
             Text("flight times:")
             Text("London")
        }
         .font(.largeTitle)
         .frame(width: 300)
         .lineLimit(1...4)*/
    }
}

#Preview {
    ContentView()
}
