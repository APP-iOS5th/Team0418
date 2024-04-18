//
//  ContentView.swift
//  Calculator_ios5_heeji
//
//  Created by Heeji Jung on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                /*계산 결과값*/
                HStack{
                    Spacer()
                    Text("77777777")
                        .padding()
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                /*자판*/
                HStack{
                    Button{
                    }label: {
                        Text("AC")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("+/-")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("%")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("÷")
                            .frame(width:80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                    }
                }
                HStack{
                    Button{
                    }label: {
                        Text("7")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("8")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("9")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("X")
                            .frame(width:80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                    }label: {
                        Text("4")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("5")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("6")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("-")
                            .frame(width:80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                    }label: {
                        Text("1")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("2")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("3")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("+")
                            .frame(width:80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                HStack{
                    Button{
                    }label: {
                        Text("0")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text(".")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("6")
                            .frame(width:80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button{
                    }label: {
                        Text("=")
                            .frame(width:80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
