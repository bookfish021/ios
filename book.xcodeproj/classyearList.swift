//
//  classyearList.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

let classyears = [
    Classyear(year:"大一上", clasneed:["計算機概論","離散數學","微積分","程式設計(一)","普通物理"], clasns:["計算機概論實習","程式設計實習(一)"], claselect:["產學巡禮"]),
    Classyear(year:"大一下", clasneed:["微積分(二)","程式設計(二)","數位邏輯","線性代數","數位邏輯實驗"], clasns:["程式設計實習(二)"], claselect:[]),
    Classyear(year:"大二上", clasneed:["資料結構","計算機組織學","機率論"], clasns:["資料結構實習"], claselect:["Python程式語言","程式競賽技巧導論","網頁程式設計","LINUX系統","組合語言","數位影像處理","數位系統設計"]),
    Classyear(year:"大二下", clasneed:["電腦網路","演算法"], clasns:[], claselect:["數位視訊處理","Java程式設計","MATLAB程式設計","組合論","Verilog 硬體描述語言","訊號與系統"]),
    Classyear(year:"大三上", clasneed:["作業系統"], clasns:[], claselect:["物聯網導論","資料分析基礎","資訊安全實務與管理","電腦圖學","資料探勘技術","多媒體互動技術與應用","數值分析","密碼學與應用","圖論演算法"]),
    Classyear(year:"大三下", clasneed:["資工系專題(一)"], clasns:[], claselect:["機器學習技術","iOS應用程式語言","應用組合學","進階資料庫","網際服務軟體工程","物聯網技術與應用","統計學","Android行動裝置設計","社群媒體探勘導論","計算機結構","資料探勘理論與實作","資訊安全實務與管理","密碼學與應用","3D 遊戲程式設計","機器視覺理論應用","資訊安全導論","數位影像處理","人工智慧與影像處理","腦機介面原理與應用"]),
    Classyear(year:"大四上", clasneed:["資工系專題(二)"], clasns:[], claselect:["iOS應用程式開發","軟體工程實務","人機互動在數位家庭的應用","3D列印技術與系統","深度學習與視覺應用","生物醫療數據分析實務"]),
    Classyear(year:"大四下", clasneed:["資訊專題討論"], clasns:[], claselect:["物件導向軟體工程","網路管理"])
]


struct classyearList: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                let columns = [GridItem(),GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(classyears.indices) { (item) in
                        VStack {
                            NavigationLink(destination: classyearDetail(classyear:classyears[item])){
                                classyearRow(classyear: classyears[item])
                                    
                            }
                            
                        }
                    }
                }
            
            }
            
        }.navigationTitle("年級")
    }
}

struct classyearList_Previews: PreviewProvider {
    static var previews: some View {
        classyearList()
    }
}
