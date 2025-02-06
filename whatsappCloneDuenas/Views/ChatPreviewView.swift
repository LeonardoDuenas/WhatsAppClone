//
//  ChatPreviewView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let sampleChatPreview = Profile(picture: "lebron", name: "LEBROOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: true)

struct ChatPreviewView: View {
    
    let profile: Profile
    
    var body: some View {
        Button(action: {
            //go to a chat page
        }) {
            HStack{
                Image(profile.picture)
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading){
                    Text(profile.name)
                        .bold()
                        .padding(.bottom, 10.0)
                        .foregroundStyle(.black)
                    
                    
                    Text(profile.lastAction)
                        .font(.caption)
                        .opacity(0.6)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                VStack(alignment: .trailing){
                    Text(profile.lastActionTime)
                        .font(.caption)
                        .opacity(0.6)
                        .padding(.bottom, 10.0)
                        .foregroundStyle(.black)
                    
                    Image(systemName: "bell.slash.fill")
                        .foregroundStyle(profile.isSilenced ? .gray : .white)
                        .font(.caption)
                }
                
            }.padding(.horizontal)
            
        }
    }
}

#Preview {
    ChatPreviewView(profile: sampleChatPreview)
}
