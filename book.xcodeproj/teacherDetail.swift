//
//  teacherDetail.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

struct teacherDetail: View {
    let teacher: Teacher
    @State private var rotateDegree: Double=0
    var body: some View {
        VStack {
            TabView{
                ForEach(0 ..< (teacher.pic).count){(item) in
                    Image(teacher.pic[item])
                        .resizable()
                        .scaledToFill()
                        .frame(minHeight: 0, maxHeight: 400)
                        .clipped()
                }
            }.tabViewStyle(PageTabViewStyle())
            
            Text(teacher.posit)
                .font(.headline)
                .fontWeight(.semibold)
                .lineLimit(0)
            
            Text(teacher.education)
                .padding()

            Text(teacher.field)
                .padding()
            
            Text(teacher.office)
                .padding()
            
            Text(teacher.other)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle(teacher.name)
    }
}

struct teacherDetail_Previews: PreviewProvider {
    static var previews: some View {
        teacherDetail(teacher :Teacher(name:"Peter", posit:"兼任講師", education:"國立清華大學通訊工程研究所", field:"ios程式設計", office:"", pic:["Peter"], other:"#蘋果\n#情歌小王子"))
    }
}
