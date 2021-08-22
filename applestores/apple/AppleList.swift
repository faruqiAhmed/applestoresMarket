//
//  AppleList.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/21/21.
//

import SwiftUI

struct AppleList: View {
    
    @EnvironmentObject var modelData: ModelData
    var apple: Applestore
    var body: some View {
        
        List(0 ..< 4){ item in
            Image("R403")
                .resizable()
                .scaledToFill()
                .frame(height:100)
                .frame(width: 200)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5)  {
                HStack{
                    Text(verbatim: apple.storeNo)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(1.5)
                     Text(verbatim: apple.storeName)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                }
                
            }
        }
    }
    
}

struct AppleList_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var apple = ModelData().apple
    static var previews: some View {
        Group {
            AppleList(apple: apple[0])
            AppleList(apple: apple[1])
                .environmentObject(modelData)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}


