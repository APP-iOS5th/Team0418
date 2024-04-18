//
//  ContentView.swift
//  OXQuiz_ios5_heeji
//
//  Created by Heeji Jung on 4/15/24.
//

import SwiftUI

//**규칙**
//연산자는 무조건 곱셈
//변수1 , 변수 2 , 결과변수 랜덤
struct ContentView: View {
    
    @State var vnumber1 : Int = 1
    @State var vnumber2 : Int = 2
    @State var vresultnumber : Int = 6
    
    @State var vcntcorrect : Int = 0
    @State var vcntwrong : Int = 0
    
    var body: some View {
        VStack {
            
            //-----문제 타이틀?------
            Label(
                title: { Text("수식을 맞춰 보세요!")
                    .font(.system(size: 20))},
                icon: { Image(systemName: "book")
                    .imageScale(.large)}
                )
            Spacer()
            
            
            //--------문제식--------
            Text("\(vnumber1) x \(vnumber2) = \(vresultnumber)")
                .font(.system(size: 35))
            Spacer()
            
            
            //--------버튼-----------
            HStack{
                //correct button
                Button("O"){
                    CorrectButtonClick()
                    loadQuiz()
                }
                .fontWeight(.semibold)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                //wrong button
                Button("X")
                {
                    WrongButtonClick()
                    loadQuiz()
                }
                .fontWeight(.semibold)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            Spacer()
            
            //-----문제 정답 카운드------
            
            HStack{
                Text("정답 갯수 : \(vcntcorrect)")
                    .bold()
                    .font(.system(size: 25))
                Text("오답 갯수 : \(vcntwrong)")
                    .bold()
                    .font(.system(size: 25))
            }
            Spacer()
            
            //-----초기화 버튼--------
            Button("카운트 초기화"){
                vcntcorrect = 0
                vcntwrong = 0
                loadQuiz()
            }
            .fontWeight(.semibold)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .background(Color.white)
            .foregroundColor(.blue)
            
        }
        .font(.largeTitle)
        .padding()
        .onAppear{
            loadQuiz()
        }
    }
    
    //실행 함수
    func loadQuiz(){
        
        print("New Game Start")
        vnumber1 = Int.random(in: 1...30)
        vnumber2 = Int.random(in: 1...30)
        
        //bool 사용이유 : 확률적으로 정답과 오답을 생성하기 위해서
        if Bool.random(){
            vresultnumber = vnumber1 * vnumber2
        }else
        {
            repeat{
                vresultnumber = Int.random(in: 1...100)
            }while vresultnumber == vnumber1 * vnumber2
        }
    }
    
    
    //정답 버튼 클릭 시 호출 함수
    func CorrectButtonClick(){
        if vresultnumber == vnumber1 * vnumber2{
            vcntcorrect += 1
        }else{
            vcntwrong += 1
        }
    }
    
    //오답 버튼 클릭 시 호출 함수
    func WrongButtonClick(){
        
        if vresultnumber == vnumber1 * vnumber2{
            vcntwrong += 1
        }else{
            vcntcorrect += 1
        }
    }
}

#Preview {
    ContentView()
}
