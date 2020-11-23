//
//  definen.swift
//  novel
//
//  Created by User18 on 2020/11/16.
//

import Foundation

struct Novel: Identifiable, Codable  {
    let id = UUID()
    var name: String
    var author: String
    var star: Int
    //var hashtag: Array<String>
}
