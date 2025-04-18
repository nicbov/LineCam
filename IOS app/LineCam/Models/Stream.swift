//
//  Stream.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//

import Foundation

struct Stream: Codable {
    let streamURL: URL            // .m3u8 HLS link
    let isLive: Bool              // Whether the stream is currently live
    let streamKey: String         // For internal usage
    let lastUpdated: Date?        // Optional timestamp for freshness
}
