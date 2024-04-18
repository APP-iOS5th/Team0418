//
//  WaveView.swift
//  Timer_ios5_heeji
//
//  Created by Heeji Jung on 4/14/24.
//

import SwiftUI



struct WaveView: View {
    
    @State private var vpercent = 20.0
    @State private var vWaveOffset = Angle(degrees: 0)
    
    var body: some View {
        ZStack{
            //wave
            Wave(waveoffset: Angle(degrees: vWaveOffset.degrees), percent: vpercent)
                .fill(Color.blue)
                .ignoresSafeArea(.all)
            //timer label
            Text("튜나쌤 메롱 :p")
                .font(.system(size: 20))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
         
            //time setting..?
        }
        .mask(
            Image.init(systemName:"applelogo")
                .resizable()
                .frame(width: 200, height: 300)
        )
        
        .onAppear{
            withAnimation(.linear(duration: 1.5).repeatForever(autoreverses: false)){
                self.vWaveOffset = Angle(degrees: 360)
            }
        }
    }
}

struct Wave: Shape
{
    var waveoffset:Angle
    var percent:Double
    
    var animatableData: Double{
        get{waveoffset.degrees}
        set{waveoffset = Angle(degrees: newValue)}
    }
    
    func path(in rect: CGRect)->Path{
        var vpath = Path()
        
        let lowWave = 0.5
        let heightWave = 1.0
        
        let newpercent = lowWave + (heightWave - lowWave) * (percent / 100)
        
        let waveheight = 0.015*rect.height
        let yoffset = CGFloat(1 - newpercent) * (rect.height - 4 * waveheight) + 2 * waveheight
        let startangle = waveoffset
        let endangle = waveoffset + Angle(degrees: 360 + 10)
        
        vpath.move(to: CGPoint(x: 0, y: yoffset + waveheight * CGFloat(sin(waveoffset.radians))))
               
        for angle in stride(from: startangle.degrees, through: endangle.degrees, by: 5) {
            let x = CGFloat((angle - startangle.degrees) / 360) * rect.width
                vpath.addLine(to: CGPoint(x: x, y: yoffset + waveheight * CGFloat(sin(Angle(degrees: angle).radians))))
               }
               
            vpath.addLine(to: CGPoint(x: rect.width, y: rect.height))
            vpath.addLine(to: CGPoint(x: 0, y: rect.height))
            vpath.closeSubpath()
               
               return vpath
    }
}
#Preview {
    WaveView()
}
