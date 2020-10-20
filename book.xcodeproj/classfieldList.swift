//
//  classfieldList.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

let classfields = [
    Classfield(field:"軟體",field1:[],field2:["Python程式語言","程式競賽技巧導論","網頁程式設計","組合語言","ASP.NET程式設計","數位視訊處理","Java程式設計","MATLAB程式設計","組合論"],field3:["物聯網導論","資料分析基礎","機器學習技術","iOS應用程式語言","應用組合學","進階資料庫","網際服務軟體工程","物聯網技術與應用","統計學","Android行動裝置設計","社群媒體探勘導論"],field4:["iOS應用程式開發","軟體工程實務","物件導向軟體工程"]),
    Classfield(field:"計算科學",field1:[],field2:["程式競賽技巧導論","Python程式語言","MATLAB程式設計","組合論"],field3:["數值分析","密碼學與應用","圖論演算法","資訊安全導論","數位影像處理","資訊安全實務與管理","應用組合學","人工智慧與影像處理","資料探勘理論與實作","腦機介面原理與應用","統計學","密碼學與應用"],field4:["生物醫療數據分析實務","深度學習與視覺應用"]),
    Classfield(field:"計算機系統",field1:[],field2:["數位系統設計","LINUX系統","組合語言","Verilog 硬體描述語言"],field3:["物聯網導論","計算機結構","iOS應用程式語言","資料探勘理論與實作","Android行動裝置設計"],field4:["iOS應用程式開發"]),
    Classfield(field:"資訊安全",field1:[],field2:[],field3:["資訊安全實務與管理","密碼學與應用"],field4:["網路管理"]),
    Classfield(field:"智慧科技(AI)",field1:[],field2:["數位影像處理","訊號與系統","數位視訊處理"],field3:["電腦圖學","資料探勘技術","物聯網導論","多媒體互動技術與應用","3D遊戲程式設計","機器視覺理論應用","機器學習技術","物聯網技術與應用","社群媒體探勘導論"],field4:["人機互動在數位家庭的應用","3D列印技術與系統","深度學習與視覺應用"]),
]

struct classfieldList: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                let columns = [GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(classfields.indices) { (item) in
                        VStack {
                            NavigationLink(destination: classfieldDetail(classfield:classfields[item])){
                                classfieldRow(classfield: classfields[item])
                            }
                        }
                    }
                }
            }
        }.navigationTitle("領域")
    }
}

struct classfieldList_Previews: PreviewProvider {
    static var previews: some View {
        classfieldList()
    }
}
