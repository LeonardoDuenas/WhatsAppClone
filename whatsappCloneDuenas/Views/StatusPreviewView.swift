//
//  StatusPreviewView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-02-05.
//

import SwiftUI

let sampleStatus = Status(picture: "nopic", name: "My status", timeUpdated: "add an update", alreadySeen: false)

struct StatusPreviewView: View {
    let status: Status
    var body: some View {
        HStack{
            Image(status.picture)
                .resizable()
                .clipShape(Circle())
                .scaledToFit()
                .frame(width: 80, height: 80)
                .overlay(
                    status.alreadySeen ?
                    Circle()
                        .stroke(.gray, lineWidth: 3)
                        .padding(3)
                    :
                    Circle()
                        .stroke(.green, style: StrokeStyle(lineWidth: 3, dash: [25]))
                        .padding(3)
                )
                .padding(3)
            
            VStack(alignment: .leading){
                Text(status.name)
                    .bold()
                    .padding(.bottom, 10.0)
                    .foregroundStyle(.black)
                
                
                Text(status.timeUpdated)
                    .font(.body)
                    .opacity(0.6)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    StatusPreviewView(status: sampleStatus)
}
