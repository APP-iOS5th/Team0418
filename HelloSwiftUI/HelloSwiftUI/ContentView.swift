//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

class ShareString: ObservableObject{
    @Published var message = ""
}

struct ContentView: View {
    //@EnvironmentObject var choice: ShareString
    //@State var move = true
    @State var changeme = true
    @State var myDegrees: Double = 0.0
    @State var flag = false
    var body: some View {
        /* VStack{
         let gridItems = [GridItem(.fixed(25)), GridItem(.fixed(25)),GridItem(.fixed(25))]
         ScrollView(Axis.Set.horizontal,showsIndicators: true){
         LazyHGrid(rows: gridItems){
         Image(systemName: "1.circle")
         Image(systemName: "2.circle")
         Image(systemName: "3.circle")
         Image(systemName: "4.circle")
         Image(systemName: "5.circle")
         Image(systemName: "6.circle")
         Image(systemName: "7.circle")
         Image(systemName: "8.circle")
         Image(systemName: "9.circle")
         Image(systemName: "10.circle")
         }
         .font(.largeTitle)
         }
         ScrollView(Axis.Set.vertical,showsIndicators: true){
         LazyVGrid(columns: gridItems){
         Image(systemName: "1.square")
         Image(systemName: "2.square")
         Image(systemName: "3.square")
         Image(systemName: "4.square")
         Image(systemName: "5.square")
         Image(systemName: "6.square")
         Image(systemName: "7.square")
         Image(systemName: "8.square")
         Image(systemName: "9.square")
         Image(systemName: "10.square")
         }
         .font(.largeTitle)
         }
         }*/
        /*VStack{
         Text("A Text view")
         .offset(x:move ? 100 : 0, y:move ? 100 : 0)
         .animation(.default, value: move)
         Toggle(isOn: $move, label: {
         Text("Toggle me")
         })
         }*/
        /*Image(systemName: "tortoise.fill")
         .font(.system(size: 100))
         .foregroundStyle(.red)
         .scaleEffect(changeme ? 1.75 : 1)
         .animation(.default, value: changeme)
         .onTapGesture {
         changeme.toggle()
         }*/
        /* VStack {
         Text("Hello, world!")
         .padding()
         .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
         .animation(.default, value: flag)
         Button("Animate now") {
         flag.toggle()
         }
         Slider(value: $myDegrees, in: -180...180, step: 1)
         .padding()
         }*/
        
        VStack {
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
                .animation(.default, value: flag)
            VStack (spacing: 50) {
                Image(systemName: "tortoise.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.red)
                    .scaleEffect(flag ? 1.75 : 1)
                //                        .animation(.default, value: flag)
                Image(systemName: "tortoise.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.red)
                    .scaleEffect(flag ? 1.75 : 1)
                //                        .animation(.easeIn, value: flag)
                Image(systemName: "tortoise.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.red)
                    .scaleEffect(flag ? 1.75 : 1)
                //                        .animation(.easeOut, value: flag)
                Image(systemName: "tortoise.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.red)
                    .scaleEffect(flag ? 1.75 : 1)
                //                        .animation(.easeInOut, value: flag)
                
                Button("Animate now") {
                    flag.toggle()
                    withAnimation(.easeInOut(duration: 2.1)) {
                        flag.toggle()
                    }
                }
                Slider(value: $myDegrees, in: -180...180, step: 1)
                    .padding()
            }
        }
    }
}



#Preview {
    ContentView()
}
 
    
    
    
    
    
    
    /*@StateObject var showMe = ShareString()
    
    var body: some View {
        NavigationStack {
            TextField("Type here:", text: $showMe.message)
            NavigationLink(destination: FileView()) {
                Text("Heads")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Tails")
            }
            .navigationTitle("Flip a Coin")
        }
        .environmentObject(showMe)
    }*/

/*var Animals: [Species] = [
    Species(name: "포유류", classification: [
        Species(name: "개", classification: [
            Species(name: "Poodle"),
            Species(name: "Collie"),
            Species(name: "St. Bernard"),
        ]),
        Species(name: "고양이"),
        Species(name: "코끼리"),
        Species(name: "고래"),
    ]),
    Species(name: "조류", classification: [
        Species(name: "Canary"),
        Species(name: "Parakeet"),
        Species(name: "Eagle"),
    ]),
]

var body: some View {
    List {
        OutlineGroup(Animals, id: \.id, children: \.classification) { creature in
            Text(creature.name)
        }
    }
}*/

    /* //스크롤뷰
     ScrollView(Axis.Set.vertical, showsIndicators: true)
     {
         ForEach(0..<50){
             Text("Item #\($0)")
         }
     }*/
    

/* // 아코디언 (펼치기)
DisclosureGroup("펼치기"){
    Text("입력한 내용 = \(message)")
    TextField("Type here",text: $message)
        .padding()
    Text(flag ? "Toggle = true" : "Toggle = false")
    Toggle(isOn: $flag){
        Text("Toggle")
    }
    Text("The slider value = \(sliderValue)")
    Slider(value: $sliderValue, in:0...15)
        .padding()
}
.padding()
 */

    /*VStack (spacing: 20) {
               Form {
                   Section {
                       Text("This is Section has no header")
                   }
                   Section("Just a Header") {
                       Text("This Section uses a simple header")
                   }
                   Section {
                       Text("This Section  uses a simple footer")
                   } footer: {
                       Text("Just a Footer")
                   }
                   Section {
                       Text("This Section uses both a header and footer")
                   } header: {
                       Text("The header")
                   } footer: {
                       Text("The footer")
                   }
               }
               
               Form {
                   Text("This is a Form")
                   Toggle(isOn: $flag, label: {
                       Text("Click me")
                   })
               }
               
               GroupBox(label: Text("Group Box")) {
                   Text("This is a Group box")
                   Toggle(isOn: $flag, label: {
                       Text("Click me")
                   })
                   TextField("Type here", text: $message)
               }
           }*/
/*
 VStack (spacing: 20) {
     Form {
         Text("This is the first Form")
         TextField("Type here", text: $message1)
     }
     Form {
         Text("This is the second Form")
         TextField("Type here", text: $message2)
     }
     Text("Form #1 = \(message1)")
     Text("Form #2 = \(message2)")
 }
 }
 
 */
/*
 List{
     ForEach(categories) { c in
         Section(header:Text(c.category)){
             ForEach(c.animals){animal in Text(animal.name)}
         }}
 }
 */

/*
 List{
     Text("Cat")
     Text("Dog")
     Text("Bird")
     Text("Reptile")
     Text("Fish")
 }
 List {
     ForEach(1...25, id: \.self) { index in
         Text("Animal #\(index)")
     }
 }
 List {
     ForEach(0...myArray.count - 1, id: \.self) { index in
         Text(myArray[index])
     }
 }
 */

/*
 
 Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button {
                        
                    } label: {
                        Label("Add to Favorite", systemImage: "heart")
                    }
                    Button {
                        
                    } label: {
                        Label("Show in Maps", systemImage: "mappin")
                    }

                }
 */
/*
 Button("show ActionSheet")
  {
      showAlert.toggle()
  }
  
  .confirmationDialog("Warning!", isPresented: $showAlert, titleVisibility: .visible){
      Button(role: .none){
          print("optionl action")
      }label:{
          Text("option1")
      }
      Button(role: .destructive){
          print("option2 action")
          
      }label:{
          Text("option2")
      }
  }message: {
      Text("Zomibse 어쩌구 저쩌구")
  }
  
 
 */
/*Text("tempValue = \(degree)")
Spacer()
Image(systemName: "star.fill")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(width: 200, height: 200)
    .rotationEffect(Angle.degrees(degree))
    .gesture(
        RotationGesture()
            .onChanged { angle in
                degree = angle.degrees
            }
    )
Spacer()*/
    
        /*Menu("Options") {
                       Button("Open", action: openFile)
                       Button("Find", action: findFile)
                       Button("Delete...", action: deleteFile)
                       
                       Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                           Text("Apple")
                       })
                       
                       Text(message).padding()
                   }
               }
           }
           
           func openFile() {
               message = "Open chosen"
           }
           
           func findFile() {
               message = "Find chosen"
           }
           
           func deleteFile() {
               message = "Delete chosen"
           }*/
        
//            Toggle(isOn: $myToggle)
//            {
//                Text(myToggle ? "Orange" : "Green")
//            }
//            .padding()
//
//            Rectangle()
//                .frame(width: 200, height: 150)
//                .foregroundColor(myToggle ? .orange : .green)
//
//            Stepper(value: $newValue, in: 1...10){
//                Text("stepper value = \(newValue)")
//            }
//            .padding()
//
//            Slider(value: $sliderValue, in: 1...50, step: 1)
//                .padding()
//            Text("Slider value = \(sliderValue)")
        
        
        
        //            Text("Choson date = \(formatter.string(from: myDate))")
        //                .padding()
        //
        //            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: { Text("Date") })
        //                        .datePickerStyle(.graphical)
        //                        .padding()
        
//        }.onAppear(){
//            formatter.locale = Locale(identifier: "ko_KR")
//            formatter.dateStyle = .long
//            formatter.timeStyle = .medium
//
        
        
        
        
        /*Picker(selection: $choice, label: Text("Picker"))
        {
            Text("Bird").tag(1.7)
            Text("Cat").tag(2.06)
            Text("Lizard").tag(3.41)
            Text("Dog").tag(4.13)
            Text("Mamster").tag(5.28)
        }.pickerStyle(SegmentedPickerStyle())
        Text("you chose \(choice)")
        
        ColorPicker("pick a color", selection: $myColor)
        Rectangle()
            .frame(width:200, height: 150)
            .foregroundColor(myColor)
        
        DatePicker(selection: $myDate, label: {Text("Date")})
            .datePickerStyle(.graphical)
        */
        
    /*Capsule().fill(Color.yellow)
     Circle().fill(Color.blue)
     Ellipse().fill(Color.brown)
     Rectangle().fill(Color.red)
     RoundedRectangle(cornerRadius: 30).fill(Color.green)
     */
    
    /* Spacer()
     Ellipse().fill(
     RadialGradient(
     gradient: Gradient(colors:[.blue,.yellow]),
     center: .top,
     startRadius: 10,
     endRadius: 65
     ))
     Spacer()
     Ellipse().fill(
     RadialGradient(
     gradient: Gradient(colors:[.blue,.yellow]),
     center: .center,
     startRadius: 10,
     endRadius: 65
     ))
     Spacer()
     Ellipse().fill(
     AngularGradient(
     gradient: Gradient(colors:[.blue,.yellow]),
     center: .center
     ))
     */
            /*Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image("clock-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 50)*/
            /*ectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            VStack{
                Button("Click")
                {
                    print("click : 1")
                }
                Button
                {
                    print("click : 2")
                }label: {
                    Text("click here")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                        .padding()
                        .border(Color.red, width: 6)
                }
                Button{
                    print("click : 3")
                }label: {
                    Image("쩡수리")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
                }
            }*/
            
    
                /* Image("송세찌")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .opacity(1.0)
                
                
                Image("쩡수리")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .opacity(1.0)*/
            
        
    
    /*
    var body : some View{
        
        VStack{
            Label("륑가디움 뤠비오사 ", systemImage: "scribble").font(.title)
            Label{
                Text("No modifiers")
            }icon:{
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
            }
        }
    }
     */
    
    /*var body : some View{
        VStack{
            let mystring = "Displays a string variable"
            
            Text("어쩌구저쩌구 블라블라블라 랄라블라~~ 테스트를 하기 위해 작성합니당. 마이스트링도 붙입니다  \(mystring) 뒤에 줄이 부족해서 아무런 말을 넣습니다 오늘 점심은 비빔밥과 된장국 계란 후라이는 2개 넣어서 먹었습니다 역시 내가 만든 요리는 왕왕왕 맛있따")
                .multilineTextAlignment(.leading)
                .truncationMode(.tail)
                .lineLimit(4)
            Spacer()
            
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("Italic")
                .font(.title2)
                .italic()
            
            Text("Underlined")
                .font(.headline)
                .underline()
            
            Text("Strikethrough")
                .font(.subheadline)
                .strikethrough()
            
            Text("Custom Font Text")
                .font(.custom("AmericanTqpewriter", size: 24))
            
            Text("Line spacing")
                .font(.body)
                .lineSpacing(20) // 줄 간격,
            
            
        }
    }*/
    
    
    
    /*var body : some View
    {
        VStack{
            ZStack{
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .offset(x:255, y:127)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .offset(x:74, y:125)
            }
        }
    }*/
    
    /* var body: some View {
        //세로 정렬
        VStack (alignment: .trailing,spacing: 24)
        {
            
            Text("Default padding of 16 points")
                .padding()
                .background(Color.yellow)
            
            Text("Default padding of 45 points")
                .padding(45)
                .background(Color.yellow)
            
            Text("Default padding of 5 points")
                .padding(5)
                .background(Color.yellow)
            Spacer()
            HStack (alignment: .center)
            {
                    Text("top padding only")
                        .padding(.top)
                        .background(Color.yellow)
                
                    Text("trailing padding only")
                        .padding(.trailing)
                        .background(Color.yellow)
                
                    Text("bottom padding only")
                        .padding(.bottom)
                        .background(Color.yellow)
            }
            Spacer()
            Text("Leading padding only")
                .padding(.leading, 45)
                .background(Color.yellow)
            
            Text("top Leading only")
                .padding([.top,.leading],45)
                .background(Color.yellow)
            
            Text("top, leading and bottom")
                .padding([.top, .leading, .bottom],45)
                .background(Color.yellow)
            
        }
    }*/
