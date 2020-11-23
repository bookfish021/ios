//
//  novelRow.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import SwiftUI

struct novelRow: View {
    let novel: Novel
    var body: some View {
        //VStack
        VStack(alignment: .leading){
            Text(novel.name).font(.title2).fontWeight(.bold)//.frame(width:300,height:30)
            //Spacer()
                HStack(alignment: .center){
                    Text(novel.author)//.frame(width:150,height:20)
                    Image("star")
                        .resizable()
                        .frame(width:25,height:20)
                    if novel.star>=2{Image("star").resizable().frame(width:25,height:20)}
                    else{Image("nonstar").resizable()
                        .frame(width:25,height:20)}
                    if novel.star>=3{Image("star").resizable()
                        .frame(width:25,height:20)}
                    else{Image("nonstar").resizable()
                        .frame(width:25,height:20)}
                    if novel.star>=4{Image("star").resizable()
                        .frame(width:25,height:20)}
                    else{Image("nonstar").resizable()
                        .frame(width:25,height:20)}
                    if novel.star>=5{Image("star").resizable()
                        .frame(width:25,height:20)}
                    else{Image("nonstar").resizable()
                        .frame(width:25,height:20)}
                }
                
            
            }
            
            /*HStack{
                //ScrollView(.horizontal,showsIndicators: false){
                   // HStack(){
                        ForEach(0 ..< (novel.hashtag).count){(item) in
                            Text("#"+novel.hashtag[(item)])
                        }
                    //}//.multilineTextAlignment(.center)
               // }
            }*/
        //}
    }
}

struct novelRow_Previews: PreviewProvider {
    static var previews: some View {
        novelRow(novel: Novel(name: "半城風月", author: "十四郎", star : 5)).previewLayout(.sizeThatFits)
    }//, hashtag:["仙妖魔","玄乙","扶蒼"]
}
