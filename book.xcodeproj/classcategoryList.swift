//
//  classcategoryList.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

let classcategorys = [
    Classcategory(category:"必修",category1:["計算機概論","離散數學","微積分(一)","程式設計(一)","普通物理","微積分(二)","程式設計(二)","數位邏輯","線性代數","數位邏輯實驗"],category2:["資料結構","計算機組織學","機率論","電腦網路","演算法"],category3:["作業系統","資工系專題(一)"],category4:["資工系專題(二)","資訊專題討論"]),
    Classcategory(category:"必選修",category1:["計算機概論實習","程式設計實習(一)","程式設計實習(二)"],category2:["資料結構實習"],category3:[],category4:[]),
    Classcategory(category:"核心選修",category1:[],category2:["數位系統設計","微處理器原理與組合語言"],category3:["計算機系統設計","計算機結構","程式語言","資料庫系統","軟體工程","嵌入式系統設計","系統程式","物件導向程式設計","編譯器","系統程式","人工智慧"],category4:[])
]

struct classcategoryList: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                let columns = [GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(classcategorys.indices) { (item) in
                        VStack {
                            NavigationLink(destination: classcategoryDetail(classcategory: classcategorys[item])){
                                classcategoryRow(classcategory: classcategorys[item])
                            }
                            
                        }
                    }
                }
            
            }
        }.navigationTitle("類型")
    }
}

struct classcategoryList_Previews: PreviewProvider {
    static var previews: some View {
        classcategoryList()
    }
}
