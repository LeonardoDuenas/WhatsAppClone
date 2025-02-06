//
//  CommunityPageView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let communitiesSample: [Community] = [
    .init(picture: "lebron", name: "KING JAMES FAN CLUB", createdTime: "Yesterday"),
    .init(picture: "lebron", name: "KING JAMES FAN CLUB", createdTime: "Yesterday")
]

struct CommunityPageView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Communities")
                    .bold()
                    .foregroundStyle(.black)
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.all)
                .font(.title)
            
            
            ScrollView{
                HStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.gray)
                        .overlay{
                            Image(systemName: "person.3.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 40, height: 40)
                        }
                    
                    VStack(alignment: .leading){
                        Text("New Community")
                            .bold()
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
                    
                }.padding(.vertical)
                
                //communitiesview list
                ForEach(communitiesSample, id: \.self) { community in
                    CommunityPreviewView(community: community)
                }
                
            }.padding(.horizontal)
            
        }
    }
}

#Preview {
    CommunityPageView()
}
