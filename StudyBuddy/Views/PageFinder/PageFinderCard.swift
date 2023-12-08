//
//  PageFinderCard.swift
//  StudyBuddy
//
//  Created by Sara Ortiz Drada on 06.07.23.
//

import SwiftUI

struct PageFinderCard: View {
    var text: String
    var pageNumber: String
    
    var body: some View {
        HStack{
            VStack {
//                Color.gray
                Color("pastel-gray")
            }
            .frame(maxWidth: 4)
            .padding(.trailing)
            
            VStack(alignment: .leading) {
                Text("(...) \(text) (...)")
                    .foregroundColor(.black)
                    
                HStack {
                    Spacer()
                    Text("Page: \(pageNumber)")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 9)
                        .padding(.vertical, 5)
                        .background(Color("pastel-gray"))
                        .clipShape(Capsule())
                }
            }
        }
        .padding(.top, 15)
        .padding(.bottom, 15)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color("light-gray"))
        .cornerRadius(10)
    }
}

struct PageFinderCard_Previews: PreviewProvider {
    static var previews: some View {
        PageFinderCard(text: "Example", pageNumber: "234")
    }
}
