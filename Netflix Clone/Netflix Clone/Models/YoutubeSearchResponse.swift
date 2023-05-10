//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Aigerim Abitayeva on 09.05.2023.
//

import Foundation

//items =     (
//            {
//        etag = "lk8409-m28s-u0WqMRhDC0vgfsE";
//        id =             {
//            kind = "youtube#video";
//            videoId = 0Dj2kq5Neus;
//        };
//        kind = "youtube#searchResult";
//    },

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
