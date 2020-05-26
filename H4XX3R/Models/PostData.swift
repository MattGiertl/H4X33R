//
//  PostData.swift
//  H4XX3R
//
//  Created by Giertl Matus on 02/05/2020.
//  Copyright © 2020 Giertl Matus. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
