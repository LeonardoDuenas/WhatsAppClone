//
//  NewsPageView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let recentStatusSamples: [Status] = [
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "11:45am", alreadySeen: false),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "11:45am", alreadySeen: false),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "11:45am", alreadySeen: false),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "11:45am", alreadySeen: false),
]

let seenStatusSamples: [Status] = [
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "Yesterday", alreadySeen: true),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "Yesterday", alreadySeen: true),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "Yesterday", alreadySeen: true),
    .init(picture: "lebron", name: "LEBROOOON", timeUpdated: "Yesterday", alreadySeen: true),
]

let channelsSample: [Channel] = [
    .init(picture: "bbc", name: "BBC", followers: "100 thousand followers", isVerified: true),
    .init(picture: "bbc", name: "BBC", followers: "100 thousand followers", isVerified: true),
    .init(picture: "bbc", name: "BBC", followers: "100 thousand followers", isVerified: true),
    .init(picture: "bbc", name: "BBC", followers: "100 thousand followers", isVerified: true),
]

struct NewsPageView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                
                HStack{
                    Text("News")
                        .bold()
                        .foregroundStyle(.black)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .padding(.horizontal)
                    Image(systemName: "ellipsis")
                }.padding(.all)
                    .font(.title)
                
                ScrollView{
                    
                    VStack (alignment: .leading){
                        
                        Text("Status")
                            .font(.title2)
                            .bold()
                        
                        //MyStatus different than a normal status
                        
                        HStack{
                            Image("nopic")
                                .resizable()
                                .clipShape(Circle())
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .padding(3)
                            
                            VStack(alignment: .leading){
                                Text("My Status")
                                    .bold()
                                    .padding(.bottom, 10.0)
                                    .foregroundStyle(.black)
                                
                                
                                Text("Add an update")
                                    .font(.body)
                                    .opacity(0.6)
                                    .foregroundStyle(.black)
                            }
                            
                            Spacer()
                            
                            
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.green)
                                .overlay {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundStyle(.white)
                                }
                            
                        }
                        
                        
                        Text("Recent")
                            .font(.headline)
                            .opacity(0.6)
                        
                        //recent status (not seen)
                        ForEach(recentStatusSamples, id: \.self) { sample in
                            StatusPreviewView(status: sample)
                        }
                        
                        Text("Seen")
                            .font(.headline)
                            .opacity(0.6)
                        
                        //seen status
                        ForEach(seenStatusSamples, id: \.self) { sample in
                            StatusPreviewView(status: sample)
                        }
                        
                        Divider()
                        
                        //channels
                        Text("Channels")
                            .font(.title2)
                            .bold()
                            .padding(.top, 5)
                        
                        Text("Get to know the latest updates about news that matter to you. Now, searh for channels to follow")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.vertical)
                        
                        Text("Search channels to follow")
                            .font(.caption)
                            .bold()
                            .foregroundStyle(.gray)
                            .padding(.vertical)
                        
                        
                        ForEach(channelsSample, id: \.self) { sample in
                            ChannelPreviewView(channel: sample)
                        }
                        
                        Button(action: {
                            print("Hi")
                        }) {
                            Text("Explore more")
                                .font(.body)
                                .padding(.horizontal)
                                .frame(height: 35)
                                .background(.white)
                                .foregroundStyle(.green)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .stroke(.gray)
                                )
                        }.padding(.vertical)
                        
                        
                    }
                    .padding()
                }
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 50)
                .foregroundStyle(.green)
                .overlay {
                    Image(systemName: "camera.fill.badge.ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                }
        }.padding()
    }
}

#Preview {
    NewsPageView()
}
