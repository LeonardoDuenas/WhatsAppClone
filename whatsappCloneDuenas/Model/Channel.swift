//
//  Channel.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//


struct Channel: Hashable{
    var picture: String
    var name: String
    var followers: String //message send by them, message received by them, mised/recieved call, sticker, image
    var isVerified: Bool
}
