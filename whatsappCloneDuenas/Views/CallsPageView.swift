//
//  CallsPageView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-06.
//

import SwiftUI

let callsSample: [Call] = [
    .init(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: true, isCallCancelled: false),
    .init(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: false, isCallCancelled: false),
    .init(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: true, isCallCancelled: true),
    .init(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: false, isCallCancelled: false),
    .init(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: false, isCallCancelled: true),
]

struct CallsPageView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                HStack{
                    Text("Calls")
                        .bold()
                        .foregroundStyle(.black)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .padding(.horizontal)
                    Image(systemName: "ellipsis")
                }.padding(.all)
                    .font(.title)
                
                ScrollView{
                    VStack(alignment: .leading){
                        Text("Favourites")
                            .foregroundStyle(.gray)
                            .bold()
                        
                        
                        HStack{
                            Image(systemName: "heart.circle.fill")
                                .foregroundStyle(.green)
                                .font(.largeTitle)
                            
                            Text("Add Favourite")
                                .padding(.horizontal)
                                .bold()
                        }
                        .padding(.vertical)
                        
                        Text("Recent")
                            .foregroundStyle(.gray)
                            .bold()
                            .padding(.bottom)
                        
                        ForEach(callsSample, id: \.self) { call in
                            CallPreviewView(call: call)
                        }
                        
                    }.padding(.horizontal)
                    
                }
                
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 50)
                .foregroundStyle(.green)
                .overlay {
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.white)
                }
                
        }.padding()
    }
}

#Preview {
    CallsPageView()
}
