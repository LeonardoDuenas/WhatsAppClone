//
//  HomePageView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct HomePageView: View {
    @State var searchBarText: String = "" //will not be used
    var filterList: [String] = ["All", "Not read", "Favourites", "groups"]
    
    let profileList: [Profile] = [
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: true),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: true),
        .init(picture: "lebron", name: "LEBROOOON", lastAction: "Hi", lastActionTime: "Yesterday", isSilenced: false),
    ]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack{
                HStack{
                    Text("WhatsApp")
                        .bold()
                        .foregroundStyle(.green)
                    Spacer()
                    Image(systemName: "camera")
                        .padding(.horizontal)
                    Image(systemName: "ellipsis")
                }.padding(.all)
                    .font(.title)
                
                
                
                
                
                ScrollView{
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .frame(width: .infinity, height: 50)
                            .padding(.horizontal)
                            .foregroundStyle(.gray)
                            .opacity(0.3)
                        
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Ask Meta AI or search")
                        }.opacity(0.4)
                    }
                    
                    
                    HStack{
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(filterList, id: \.self) { filter in
                                    Button(action: {
                                        print("Hi")
                                    }) {
                                        Text(filter)
                                            .font(.body)
                                            .padding(.horizontal)
                                            .frame(height: 35)
                                            .background(.black.opacity(0.1))
                                            .foregroundStyle(.gray)
                                            .scaledToFill()
                                            .clipShape(Capsule())
                                    }
                                }
                            }
                        }
                        
                        Button(action: {
                            print("Hi")
                        }) {
                            Image(systemName: "plus")
                                .font(.body)
                                .padding(.horizontal)
                                .frame(height: 35)
                                .background(.black.opacity(0.1))
                                .foregroundStyle(.gray)
                                .clipShape(Capsule())
                        }
                    }
                    .padding()
                    //CHATPREVIEWVIEW
                    ForEach(profileList, id: \.self) { profile in
                        ChatPreviewView(profile: profile)
                    }
                }
                
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 50)
                .foregroundStyle(.green)
                .overlay {
                    Image(systemName: "plus.bubble.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.white)
                }
        }.padding()
    }
}

#Preview {
    HomePageView()
}
