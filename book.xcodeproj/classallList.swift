//
//  classallList.swift
//  book
//
//  Created by User02 on 2020/10/15.
//

import SwiftUI

let classalls = [
    Classall(name:"計算機概論",year:"大一上",field:"必修"),
    Classall(name:"離散數學",year:"大一上",field:"必修"),
    Classall(name:"微積分",year:"大一上",field:"必修"),
    Classall(name:"程式設計(一)",year:"大一上",field:"必修"),
    Classall(name:"普通物理",year:"大一上",field:"必修"),
    Classall(name:"微積分(二)",year:"大一下",field:"必修"),
    Classall(name:"程式設計(二)",year:"大一下",field:"必修"),
    Classall(name:"數位邏輯",year:"大一下",field:"必修"),
    Classall(name:"數位邏輯實驗",year:"大一下",field:"必修"),
    Classall(name:"資料結構",year:"大二上",field:"必修"),
    Classall(name:"計算機組織學",year:"大二上",field:"必修"),
    Classall(name:"機率論",year:"大二上",field:"必修"),
    Classall(name:"電腦網路",year:"大二下",field:"必修"),
    Classall(name:"演算法",year:"大二下",field:"必修"),
    Classall(name:"作業系統",year:"大三上",field:"必修"),
    Classall(name:"資工系專題(一)",year:"大三下",field:"必修"),
    Classall(name:"資工系專題(二)",year:"大四上",field:"必修"),
    Classall(name:"資訊專題討論",year:"大四下",field:"必修"),
    Classall(name:"計算機概論實習",year:"大一上",field:"必選修"),
    Classall(name:"程式設計實習(一)",year:"大一上",field:"必選修"),
    Classall(name:"程式設計實習(二)",year:"大一下",field:"必選修"),
    Classall(name:"產學巡禮",year:"大一上",field:"選修"),
    Classall(name:"Python程式語言",year:"大二上",field:"選修-軟體,計算科學"),
    Classall(name:"程式競賽技巧導論",year:"大二上",field:"選修-軟體,計算科學"),
    Classall(name:"網頁程式設計",year:"大二上",field:"選修-軟體"),
    Classall(name:"LINUX系統",year:"大二上",field:"選修-計算機系統"),
    Classall(name:"組合語言",year:"大二上",field:"選修-軟體,計算機系統"),
    Classall(name:"數位影像處理",year:"大二上,大三下",field:"選修-軟體,計算科學,智慧科技(AI)"),
    Classall(name:"數位系統設計",year:"大二上",field:"選修-計算機系統"),
    Classall(name:"數位視訊處理",year:"大二下",field:"選修-智慧科技(AI)"),
    Classall(name:"Java程式設計",year:"大二下",field:"選修-軟體"),
    Classall(name:"MATLAB程式設計",year:"大二下",field:"選修-軟體,計算科學"),
    Classall(name:"組合論",year:"大二下",field:"選修-計算科學"),
    Classall(name:"Verilog 硬體描述語言",year:"大二下",field:"選修-計算機系統"),
    Classall(name:"訊號與系統",year:"大二下",field:"選修-智慧科技(AI)"),
    Classall(name:"物聯網導論",year:"大三上",field:"選修-軟體,計算機系統,智慧科技(AI)"),
    Classall(name:"資料分析基礎",year:"大三上",field:"選修-軟體"),
    Classall(name:"資訊安全實務與管理",year:"大三上,大三下",field:"選修-計算科學,資訊安全"),
    Classall(name:"電腦圖學",year:"大三上",field:"選修-智慧科技(AI)"),
    Classall(name:"資料探勘技術",year:"大三上",field:"選修-智慧科技(AI)"),
    Classall(name:"多媒體互動技術與應用",year:"大三上",field:"選修-智慧科技(AI)"),
    Classall(name:"數值分析",year:"大三上",field:"選修-計算科學"),
    Classall(name:"密碼學與應用",year:"大三上,大三下",field:"選修-資訊安全,計算科學"),
    Classall(name:"圖論演算法",year:"大三上",field:"選修-計算科學"),
    Classall(name:"機器學習技術",year:"大三下",field:"選修-軟體,智慧科技(AI)"),
    Classall(name:"iOS應用程式語言",year:"大三下",field:"選修-軟體,計算機系統"),
    Classall(name:"應用組合學",year:"大三下",field:"選修-軟體,計算科學"),
    Classall(name:"進階資料庫",year:"大三下",field:"選修-軟體"),
    Classall(name:"網際服務軟體工程",year:"大三下",field:"選修-軟體"),
    Classall(name:"物聯網技術與應用",year:"大三下",field:"選修-軟體,智慧科技(AI)"),
    Classall(name:"統計學",year:"大三下",field:"選修-軟體,計算科學"),
    Classall(name:"Android行動裝置設計",year:"大三下",field:"選修-軟體,計算機系統"),
    Classall(name:"社群媒體探勘導論",year:"大三下",field:"選修-軟體,智慧科技(AI)"),
    Classall(name:"資料探勘理論與實作",year:"大三下",field:"選修-計算科學,計算機系統"),
    Classall(name:"3D遊戲程式設計",year:"大三下",field:"選修-智慧科技(AI)"),
    Classall(name:"機器視覺理論應用",year:"大三下",field:"選修-智慧科技(AI)"),
    Classall(name:"資訊安全導論",year:"大三下",field:"選修-計算科學"),
    Classall(name:"人工智慧與影像處理",year:"大三下",field:"選修-計算科學"),
    Classall(name:"腦機介面原理與應用",year:"大三下",field:"選修-計算科學"),
    Classall(name:"iOS應用程式開發",year:"大四上",field:"選修-軟體,計算機系統"),
    Classall(name:"軟體工程實務",year:"大四上",field:"選修-軟體"),
    Classall(name:"人機互動在數位家庭的應用",year:"大四上",field:"選修-智慧科技(AI)"),
    Classall(name:"3D列印技術與系統",year:"大四上",field:"選修-智慧科技(AI)"),
    Classall(name:"深度學習與視覺應用",year:"大四上",field:"選修-計算科學,智慧科技(AI)"),
    Classall(name:"生物醫療數據分析實務",year:"大四上",field:"選修-計算科學"),
    Classall(name:"物件導向軟體工程",year:"大四下",field:"選修-軟體"),
    Classall(name:"網路管理",year:"大四下",field:"選修-資訊安全")
]

struct classallList: View {
    var body: some View {
        VStack{
            Group{

                List(0 ..< classalls.count){(item) in
                    Text(classalls[item].name)
                    Text(classalls[item].year)
                    Text(classalls[item].field)
                }.background(Color("maincolor"))
                //.cornerRadius(18)
            }
        }.navigationTitle("課程總覽")
       
    }
}

struct classallList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            classallList()
            classallList()
                .preferredColorScheme(.dark)
        }
    }
}
