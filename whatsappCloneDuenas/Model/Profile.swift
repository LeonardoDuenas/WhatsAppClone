//
//  Profile.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-01-30.
//

struct Profile: Hashable{
    var picture: String
    var name: String
    var lastAction: String //message send by them, message received by them, mised/recieved call, sticker, image
    var lastActionTime: String
    var isSilenced: Bool
}
