//
//  CallPreviewView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-06.
//

import SwiftUI

let callSample = Call(picture: "lebron", name: "LEBROOOON", callTime: "Yesterday, 3:33am", isUserSender: true, isCallCancelled: false)

struct CallPreviewView: View {
    let call: Call
    var body: some View {
        HStack{
            Image(call.picture)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
                
            VStack(alignment: .leading, spacing: 10){
                Text(call.name)
                    .foregroundStyle(call.isCallCancelled ? .red : .black)
                
                HStack{
                    Image(systemName: call.isUserSender ? "arrow.up.forward" : "arrow.down.left")
                        .foregroundStyle(call.isCallCancelled ? .red : .green)
                    
                    Text(call.callTime)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            
            Spacer()
            
            Image(systemName: "phone")
                .font(.largeTitle)
        }
    }
}

#Preview {
    CallPreviewView(call: callSample)
}
