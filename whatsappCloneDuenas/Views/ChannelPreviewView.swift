//
//  ChannelPreviewView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let sampleChannel = Channel(picture: "bbc", name: "BBC", followers: "100 thousand followers", isVerified: false)

struct ChannelPreviewView: View {
    let channel: Channel
    
    var body: some View {
        HStack{
            Image(sampleChannel.picture)
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 70, height: 70)
                .padding(3)
            
            VStack(alignment: .leading){
                HStack{
                    Text(sampleChannel.name)
                        .bold()
                    //.padding(.bottom, 10.0)
                        .foregroundStyle(.black)
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(sampleChannel.isVerified ? .green : .white)
                }
                
                
                Text(sampleChannel.followers)
                    .font(.body)
                    .opacity(0.6)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            Button(action: {
                print("Hi")
            }) {
                Text("Follow")
                    .font(.body)
                    .padding(.horizontal)
                    .bold()
                    .frame(height: 35)
                    .background(.green.opacity(0.2))
                    .foregroundStyle(.green)
                    .clipShape(Capsule())
            }
            
        }
    }
}

#Preview {
    ChannelPreviewView(channel: sampleChannel)
}
