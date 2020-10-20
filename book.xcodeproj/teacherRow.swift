//
//  teacherRow.swift
//  book
//
//  Created by User02 on 2020/10/14.
//

import SwiftUI

struct teacherRow: View {
    let teacher: Teacher
    
    var body: some View{
        HStack{
            Image(teacher.pic[0])
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                //.clipShape(Circle())
                //.cornerRadius(18)
            
            Text(teacher.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("textcolor"))
                
            
            Text(teacher.posit)
                .font(.footnote)
                .fontWeight(.thin)
                .foregroundColor(Color("textcolor"))
            
            Spacer()
        }
        .background(Color("maincolor"))
        .cornerRadius(18)
        
    }
}

struct teacherRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            teacherRow(teacher: Teacher(name:"Peter", posit:"兼任講師", education:"國立清華大學通訊工程研究所", field:"ios程式設計", office:"", pic:["Peter"], other:"#蘋果\n#情歌小王子"))
                .previewLayout(.sizeThatFits)
            teacherRow(teacher: Teacher(name:"Peter", posit:"兼任講師", education:"國立清華大學通訊工程研究所", field:"ios程式設計", office:"", pic:["Peter"], other:"#蘋果\n#情歌小王子"))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
