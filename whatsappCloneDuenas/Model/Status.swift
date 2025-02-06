//
//  Status.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

struct Status: Hashable{
    var picture: String
    var name: String
    var timeUpdated: String //message send by them, message received by them, mised/recieved call, sticker, image
    var alreadySeen: Bool
}
