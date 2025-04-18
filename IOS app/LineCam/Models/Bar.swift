//
//  Bar.swift
//  LineCam
//
//  Created by Nicolas Boving on 4/17/25.
//
import Foundation

struct Bar: Identifiable, Codable {
    let id: String
    let name: String
    let streamKey: String?
    
    var streamURL: URL? {
       //fetches API when we have real stream set up
        //mock URL
        if let key = streamKey {
            return URL(string: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8")
        }
        return nil
    }
}
