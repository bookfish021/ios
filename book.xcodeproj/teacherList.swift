//
//  TeacherList.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

let teachers = [
    Teacher(name:"Peter", posit:"兼任講師", education:"國立清華大學通訊工程研究所", field:"ios程式設計", office:"", pic:["Peter"], other:"#蘋果\n#情歌小王子"),
    Teacher(name:"趙志民", posit:"教授", education:"國立中央大學資訊工程博士", field:"物聯網、無線網路、行動計算、深度學習應用", office:"INS 614", pic:["趙志民"], other:""),
    Teacher(name:"嚴茂旭", posit:"副教授", education:"國立台北科技大學博士", field:"VLSI設計、FPGA設計、計算機結構", office:"INS 618", pic:["嚴茂旭"], other:""),
    Teacher(name:"李孟書", posit:"教授", education:"美國南卡羅來那州大學數學博士", field:"傅立葉分析、影像處理", office:"INS 511", pic:["李孟書"], other:"#四次考試加起來200分就可以過了"),
    Teacher(name:"丁培毅", posit:"教授", education:"美國加州大學電機及電腦工程博士", field:"數位訊號處理、語音合成與辨認、類神經網路、密碼學與資訊安全", office:"INS 512", pic:["丁哥","丁2"], other:"你有聽過傳說中的丁哥教嗎"),
    Teacher(name:"張雅惠", posit:"教授", education:"美國馬里蘭大學電腦科學博士", field:"資料庫系統、地理資訊系統、機器學習應用", office:"INS 616", pic:["張雅惠"], other:"SSR稀有級女老師"),
    Teacher(name:"鄭錫齊", posit:"教授", education:"國立交通大學資訊工程博士", field:"多媒體計算、視訊分析與通訊、智慧型系統設計、多媒體資料庫系統", office:"INS 610", pic:["鄭錫齊"], other:""),
    Teacher(name:"馬尚彬", posit:"教授", education:"國立中央大學資訊所博士", field:"軟體工程、服務運算、語意網路與開放資料、雲端行動運用", office:"INS 401", pic:["馬尚彬"], other:"#可以學到東西的硬課\n#熱門老師"),
    Teacher(name:"許玉平", posit:"副教授", education:"美國南卡羅來那大學", field:"泛函分析、固定點理論", office:"INS 516", pic:["許玉平"], other:""),
    Teacher(name:"林英仁", posit:"副教授", education:"美國醫理若大學學香檳分校數學博士", field:"圖論、組合論、機率、演算法，最佳化理論", office:"INS 508", pic:["林英仁"], other:"#連續多年獲得最神祕老師稱號"),
    Teacher(name:"翁世光", posit:"副教授", education:"美國猶他大學電腦博士", field:"科學計算、視覺、電腦圖學", office:"INS 510", pic:["翁世光"], other:"#可以學到東西的硬課\n#據說期中會退選2/3的人"),
    Teacher(name:"蔡國輝", posit:"副教授", education:"美國西北大學資訊工程博士", field:"電腦網路、作業系統、演算法", office:"INS 518", pic:["蔡國輝"], other:"#硬課"),
    Teacher(name:"張欽圳", posit:"副教授", education:"國立交通大學資訊科學博士", field:"電腦視覺、機器學習", office:"INS 410", pic:["張欽圳"], other:"#人好分甜\n#魔性python"),
    Teacher(name:"程華淮", posit:"副教授", education:"國利清華大學數學博士", field:"微分方程、分析、演算法分析", office:"INS 408", pic:["Peter"], other:"#大刀"),
    Teacher(name:"林清池", posit:"副教授", education:"國立台灣大學資訊工程博士", field:"圖論演算法、資料結構、計算幾何", office:"EE2 620", pic:["林清池","池2"], other:"#精美講義 #考試可帶A4小抄\n清池小知識: 他和他兒子都被狗咬過哦"),
    Teacher(name:"辛華昀", posit:"副教授", education:"國立台灣科技大學資訊工程博士", field:"嵌入式系統設計、物聯網系統設計、自動化系統設計", office:"INS 612", pic:["辛華昀","辛2","辛3"], other:"#名師！\n #上課睡覺記得蓋外套，不然會感冒"),
    Teacher(name:"張光遠", posit:"副教授", education:"美國華盛頓大學計算生物學博士", field:"計算免疫學、生物資訊、健康資訊、機器學習", office:"INS 514", pic:["張光遠"], other:"#吉祥物"),
    Teacher(name:"林韓禹", posit:"副教授", education:"國立交通大學資訊科學與工程博士", field:"雲端運算安全、RFID安全與隱私、電腦與通訊安全、數位證據保全", office:"EE2 620", pic:["林韓禹"], other:""),
    Teacher(name:"許為元", posit:"副教授", education:"國立台灣大學資訊工程博士", field:"海洋巨量資料、海洋資訊科學、演算法設計與分析、系統程式、財務工程", office:"EE2 634", pic:["許為元","許2","許3"], other:""),
    Teacher(name:"葉春超", posit:"助理教授", education:"國立台灣大學資訊工程博士", field:"計算機系統、計算機網路", office:"INS 412", pic:["葉春超"], other:""),
    Teacher(name:"馬永昌", posit:"助理教授", education:"美國麻州大學電機與電腦工程博士", field:"系統晶片設計、無線通訊、計算機架構、Android系統與軟體", office:"INS 607", pic:["馬永昌"], other:"#謎樣打分機制"),
    Teacher(name:"林川傑", posit:"助理教授", education:"國立台灣大學資訊工程博士", field:"自然語言、資訊檢索、資訊擷取、問答系統", office:"INS 609", pic:["林川傑"], other:""),
    Teacher(name:"阮議聰", posit:"助理教授", education:"美國伊利諾大學芝加哥分校電機與電腦博士", field:"軟體工程、智慧型系統、正規驗證、軟體安全", office:"INS 608", pic:["阮議聰"], other:""),
    Teacher(name:"林士勛", posit:"助理教授", education:"國立成功大學資訊工程博士", field:"電腦繪圖、資料視覺化、圖形識別", office:"SE 407", pic:["林士勛"], other:""),
    Teacher(name:"蔡宇軒", posit:"助理教授", education:"國立交通大學資訊工程學博士", field:"電腦視覺、機器學習、社會科學模擬", office:"INS 509", pic:["蔡宇軒"], other:""),
    Teacher(name:"蘇育生", posit:"助理教授", education:"Ph.D., Dept. of Computer Science and Information Engineering, National Central University, Taiwan", field:"社群媒體探勘、人工智慧暨物聯網、雲端運算、計算思維", office:"INS 316", pic:["蘇育生"], other:"#如果你們只來期中期末，就會被當哦"),
    Teacher(name:"林致宇", posit:"助理教授", education:"國立交通大學資訊工程博士", field:"無線網路、雲端計算、人工智慧", office:"INS 110A", pic:["林致宇"], other:""),
    Teacher(name:"蔡東佐", posit:"助理教授", education:"國立彰化師範大學數學博士", field:"密碼學、資訊安全、深度學習", office:"INS 507", pic:["蔡東佐"], other:""),
    Teacher(name:"賴榮滄", posit:"兼任教授", education:"美國加州大學洛杉磯分校計算機工程博士", field:"多媒體、網路安全、生物資訊", office:"", pic:["賴榮滄"], other:""),
    Teacher(name:"林富森", posit:"兼任助理教授", education:"美國奧瑞岡州立大學計算數學博士", field:"科學計算、數值分析、計算複變分析、最短路徑問題、Matlab", office:"INS 414A", pic:["林富森"], other:""),
    Teacher(name:"白敦文", posit:"合聘教授", education:"美國杜克大學電機與電腦工程學系", field:"影像分析、圖形識別、生物資訊", office:"", pic:["白敦文"], other:""),
    Teacher(name:"謝君偉", posit:"合聘教授", education:"合聘教授", field:"影像處理、圖形識別、多媒體與視訊處理、電腦視覺", office:"", pic:["謝君偉","君2","君3"], other:"")
]

struct teacherList: View {
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical) {
                let columns = [GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(teachers.indices) { (item) in
                        VStack {
                            NavigationLink(destination: teacherDetail(teacher:teachers[item])){
                                teacherRow(teacher: teachers[item])
                            }
                        }
                    }
                }
            
            }
        }.navigationTitle("老師總覽")
    }
}

struct teacherList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            teacherList()
            teacherList()
                .preferredColorScheme(.dark)
        }
    }
}
