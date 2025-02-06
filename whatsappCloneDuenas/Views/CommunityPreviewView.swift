//
//  CommunityPreviewView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-06.
//

import SwiftUI
let sampleCommunity = Community(picture: "lebron", name: "KING JAMES FAN CLUB", createdTime: "Yesterday")
struct CommunityPreviewView: View {
    
    let community: Community
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(community.picture)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 70, height: 70)
                
                VStack(alignment: .leading){
                    Text(community.name)
                        .bold()
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
            }
            
            Divider()
            
            HStack{
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.green.opacity(0.5))
                    .overlay{
                        Image(systemName: "megaphone.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.green)
                            .frame(width: 40, height: 40)
                    }
                
                
                
                VStack(alignment: .leading){
                    Text("Notices")
                        .bold()
                        .foregroundStyle(.black)
                    
                    Text("We welcome you to your new community")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Text(community.createdTime)
                    .font(.caption)
                    .foregroundStyle(.gray)
                
            }
            
            HStack{
                Image(systemName: "bubble.left.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.gray.opacity(0.3))
                    .frame(width: 60, height: 50)
                
                VStack(alignment: .leading){
                    Text("General")
                        .bold()
                        .foregroundStyle(.black)
                    
                    Text("We welcome you to the communities General")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                Spacer()
                
                Text(community.createdTime)
                    .font(.caption)
                    .foregroundStyle(.gray)
                
            }
            
            HStack{
                Image(systemName: "chevron.right")
                    .padding(.horizontal)
                
                Text("See all")
            }.padding()
                .foregroundStyle(.gray)
        }.padding(.bottom)
    }
}

#Preview {
    CommunityPreviewView(community: sampleCommunity)
}
