//

//  ContentView.swift

//  demo2

//

//  Created by User11 on 2020/9/23.

//

import SwiftUI

struct ContentView: View {

    var body: some View {

        ZStack{
            
            Group{//back
                Path{(path) in  //bookback
                    path.move(to: CGPoint(x: 60, y: 290))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 290), control:CGPoint(x: 115, y: 250))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 290), control:CGPoint(x: 225, y: 250))
                    path.addLine(to: CGPoint(x: 270, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 450), control:CGPoint(x: 220, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 70, y: 450), control:CGPoint(x: 120, y: 410))
                    path.closeSubpath()
                }.fill(Color(red: 220/255, green: 240/255, blue: 245/255))
                
                Path{(path) in  //fishback
                    path.move(to: CGPoint(x: 220, y: 360))
                    path.addQuadCurve(to: CGPoint(x: 370, y: 420), control:CGPoint(x: 240, y: 300))
                    path.addQuadCurve(to: CGPoint(x: 380, y: 380), control:CGPoint(x: 340, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 220, y: 360), control:CGPoint(x: 210, y: 430))
                }.fill(Color(red: 240/255, green: 210/255, blue: 200/255))
            }
    
            Group{ //bookdetail
                Path{(path) in  //centerline
                    path.move(to: CGPoint(x: 170, y: 450))
                    path.addLine(to: CGPoint(x: 170, y: 300))
                }.stroke(Color(red: 22/255, green: 240/255, blue: 245/255)).grayscale(0.90)
                
                Path{(path) in //graydown
                    path.move(to: CGPoint(x: 74, y: 440))
                    path.addLine(to: CGPoint(x: 71, y: 386))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 430), control:CGPoint(x: 80, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 74, y: 440), control:CGPoint(x: 95, y: 420))
                }.fill(Color(red: 180/255, green: 240/255, blue: 245/255)).grayscale(0.60)
                
                Path{(path) in //grayup
                    path.move(to: CGPoint(x: 66, y: 295))
                    path.addLine(to: CGPoint(x: 69, y: 354))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 280), control:CGPoint(x: 80, y: 300))
                    path.addQuadCurve(to: CGPoint(x: 66, y: 295), control:CGPoint(x: 80, y: 280))
                }.fill(Color(red: 100/255, green: 240/255, blue: 245/255)).grayscale(0.60)
            }

            Group{//fishdetail
                Path{(path) in //gray
                    path.move(to: CGPoint(x: 320, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 225, y: 360), control:CGPoint(x: 210, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 320, y: 390), control:CGPoint(x: 220, y: 400))
                }.fill(Color(red: 240/255, green: 220/255, blue: 210/255))
                
                Path{(path) in //neck
                    path.move(to: CGPoint(x: 230, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 260, y: 360), control:CGPoint(x: 260, y: 380))
                }.stroke(Color(red: 240/255, green: 220/255, blue: 210/255),lineWidth: 2) .brightness(0.04)
                
                Path{(path) in //hand
                    path.move(to: CGPoint(x: 280, y: 375))
                    path.addQuadCurve(to: CGPoint(x: 270, y: 383), control:CGPoint(x: 285, y: 380))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 375), control:CGPoint(x: 310, y: 390))
                }.fill(Color(red: 240/255, green: 210/255, blue: 200/255)) .brightness(0.06)
                
                Path(ellipseIn: CGRect(x: 240, y: 355, width: 10, height: 10)) //eye
            }
             

            Group{//mark
                Path{(path) in //green
                    path.move(to: CGPoint(x: 230, y: 262))
                    path.addLine(to: CGPoint(x: 230, y: 290))
                    path.addLine(to: CGPoint(x: 240, y: 290))
                    path.addLine(to: CGPoint(x: 240, y: 265))
                    path.closeSubpath()
                }.fill(Color(red: 210/255, green: 240/255, blue: 200/255))
                
                Path{(path) in //red
                    path.move(to: CGPoint(x: 63, y: 330))
                    path.addLine(to: CGPoint(x: 62, y: 322))
                    path.addQuadCurve(to: CGPoint(x: 40, y: 310), control:CGPoint(x: 45, y: 320))
                    path.addLine(to: CGPoint(x: 33, y: 322))
                    path.addQuadCurve(to: CGPoint(x: 62, y: 326), control:CGPoint(x: 45, y: 330))
                    path.addQuadCurve(to: CGPoint(x: 34, y: 330), control:CGPoint(x: 48, y: 330))
                    path.addLine(to: CGPoint(x: 36, y: 340))
                    path.addQuadCurve(to: CGPoint(x: 63, y: 330), control:CGPoint(x: 48, y: 340))
                }.fill(Color(red: 240/255, green: 210/255, blue: 200/255))
                
                Path{(path) in //purple
                    path.move(to: CGPoint(x: 68, y: 418))
                    path.addLine(to: CGPoint(x: 67, y: 402))
                    path.addLine(to: CGPoint(x: 62, y: 402))
                    path.addLine(to: CGPoint(x: 61, y: 418))
                    path.closeSubpath()
                }.fill(Color(red: 210/255, green: 200/255, blue: 240/255))
            }
            Group{
                Text("書裡游瑜").font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 240/255, green: 200/255, blue: 210/255))
                    .padding(.all, 10.0)
                    .background(Color(red: 250/255, green: 240/255, blue: 200/255))
                    .cornerRadius(9.0)
                    .rotationEffect(.degrees(30))

            }.offset(x: 90,y: -180)
            
       
        }.offset(x: 10,y: 100)

    }

}

//.padding()

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}
