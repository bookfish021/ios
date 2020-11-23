//
//  Chart.swift
//  novel
//
//  Created by User18 on 2020/11/23.
//

import SwiftUI

struct Chart: View {
    
    @StateObject var novelData = NovelData()
    var Novels = [Novel]()
    
    
    var starsum: [Double] = [0, 0, 0, 0, 0, 0]
    var starPercentage: [Double] = [0, 0, 0, 0, 0, 0]
    var angles = [Angle]()
    @State private var chart = "圓餅圖"
    var charts = ["圓餅圖", "柱狀圖"]
    //var sum: Double = 0
    
    init(novelData: NovelData){
        for index in novelData.Novels{
            starsum[0] += 1
            if index.star == 1{starsum[1] += 1}
            else if index.star == 2{starsum[2] += 1}
            else if index.star == 3{starsum[3] += 1}
            else if index.star == 4{starsum[4] += 1}
            else if index.star == 5{starsum[5] += 1}
        }
        var startDegree: Double = 0
        for i in 1..<6{
            starPercentage[i] = Double(self.starsum[i]/starsum[0])
            angles.append(.degrees(startDegree))
            startDegree += 360 * starPercentage[i]
        }
    }
    var body: some View {
        NavigationView{
            VStack{
                Picker(selection: self.$chart, label: Text("圖形")){
                    ForEach(charts, id: \.self){(index) in
                        Text(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .navigationBarTitle("統計圖表")
                if chart == "圓餅圖"{
                    if starsum[0] == 0{
                        VStack{
                            Text("你該去看書了")
                            Text("ＯＷＯ")
                            Spacer()
                        }
                    }
                    else{
                        VStack{
                            Spacer()
                            PieChartView(angles: angles)
                                .frame(width: 200, height: 200)
                            Spacer()
                            HStack{
                                Color(red: 169/255, green: 204/255, blue: 221/255).frame(width: 15, height: 15)
                                Text("1顆星: \(starPercentage[1]*100, specifier: "%.0f")%")
                                Color(red: 163/255, green: 228/255, blue: 215/255).frame(width: 15, height: 15)
                                Text("2顆星: \(starPercentage[2]*100, specifier: "%.0f")%")
                            }
                            HStack{
                                Color(red: 249/255, green: 231/255, blue: 159/255).frame(width: 15, height: 15)
                                Text("3顆星: \(starPercentage[3]*100, specifier: "%.0f")%")
                                Color(red: 245/255, green: 203/255, blue: 167/255).frame(width: 15, height: 15)
                                Text("4顆星: \(starPercentage[4]*100, specifier: "%.0f")%")
                            }
                            HStack{
                                Color(red: 245/255, green: 183/255, blue: 177/255).frame(width: 15, height: 15)
                                Text("5顆星: \(starPercentage[5]*100, specifier: "%.0f")%")
                            }
                            Spacer()
                        }
                    }
                }
                else if chart == "柱狀圖"{
                    if starsum[0] == 0{
                        VStack{
                            Text("一日不讀書")
                            Text("便覺面目可憎")
                            Spacer()
                        }
                    }
                    else{
                        VStack{
                            Spacer()
                            BarChart(barHeights: starPercentage)
                            Spacer()
                            }
                        }
                    }
                }
            }
    }
}

struct Chart_Previews: PreviewProvider {
    static var previews: some View {
        Chart(novelData: NovelData())
    }
}

struct PieChartView: View {
    var angles: [Angle]
    var body: some View{
        ZStack{
            PieChart(startAngle: self.angles[4], endAngle: .zero)
                .fill(Color(red: 245/255, green: 183/255, blue: 177/255))
            PieChart(startAngle: self.angles[3], endAngle: self.angles[4])
                .fill(Color(red: 245/255, green: 203/255, blue: 167/255))
            PieChart(startAngle: self.angles[2], endAngle: self.angles[3])
                .fill(Color(red: 249/255, green: 231/255, blue: 159/255))
            PieChart(startAngle: self.angles[1], endAngle: self.angles[2])
                .fill(Color(red: 163/255, green: 228/255, blue: 215/255))
            PieChart(startAngle: self.angles[0], endAngle: self.angles[1])
                .fill(Color(red: 169/255, green: 204/255, blue: 221/255))
        }
    }
}

struct PieChart: Shape{
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            let center = CGPoint(x: rect.midX, y:rect.midY)
            path.move(to: center)
            path.addArc(center: center, radius: rect.midX, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        }
        
    }
}

struct BarChart: View{
    var barHeights: [Double]
    var body: some View{
        HStack(spacing: 20){
            Bar(barHeights: self.barHeights[1], info: "1")
            Bar(barHeights: self.barHeights[2], info: "2")
            Bar(barHeights: self.barHeights[3], info: "3")
            Bar(barHeights: self.barHeights[4], info: "4")
            Bar(barHeights: self.barHeights[5], info: "5")
            
        }
        .frame(height: 270)
    }
}
struct Bar: View
{
    var barHeights: Double
    @State private var changeColor = Color(red: 169/255, green: 204/255, blue: 221/255)

    @State private var height: CGFloat = 0
    var info: String
    var body: some View{
        VStack{
            ZStack(alignment: .bottom){
                
                Capsule().frame(width: 30, height: 250)
                    .foregroundColor(changeColor)
                Capsule().frame(width: 30, height: height*250)
                    .foregroundColor(Color(red: 249/255, green: 231/255, blue: 159/255))
                .animation(.linear(duration:  1))
                .onAppear{
                    self.height = CGFloat(self.barHeights)
                    if height > 0.4{changeColor = Color(red: 245/255, green: 183/255, blue: 177/255)}
                    else if height > 0.2{changeColor = Color(red: 245/255, green: 203/255, blue: 167/255)}
                    else if height > 0.1{changeColor = Color(red: 163/255, green: 228/255, blue: 215/255)}
                }
            }
            Text(info)
            .frame(height: 22)
                .padding(.top, 4)
        }
    }
}
