//
//  AddReview.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/22/21.
//

import SwiftUI
 
struct AddReview: View {
    init() {
            UITextView.appearance().backgroundColor = .clear // First, remove the UITextView's backgroundColor.
        }
    @State var EnterName: String = ""
    @State private var Entime : String = ""
    var body: some View {
        NavigationView {
            ZStack{
               Rectangle()
                .fill(Color("backgroun"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        List{
            
            VStack{
                TextField("Enter Your Name", text: $EnterName)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.10))
                    .cornerRadius(20)
                    .padding(.top,15)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
               
            }
            VStack{
                VStack(alignment: .center, spacing: 10.0, content: {
                    TextField("10:00Am", text: $Entime)
                      
                        .padding(.vertical,12)
                        .padding(.horizontal)
                        .background(Color.gray.opacity(0.10))
                        .cornerRadius(20)
                        .padding(.top,15)
                      
                })
                .padding()
                
            }
            VStack{
                RoundedButton().padding(.top, 20)
            }
            
            
            
        }
        .navigationBarTitle(Text("Add Reviews"))
        }
            
        }
       
    }
}

//struct RoundedButton : View {
//    var body: some View {
//        Button(action: {}) {
//            HStack {
//                Spacer()
//                Text("Save")
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .font(.headline)
//                    .padding(15)
//                    .background(Color.orange)
////                           .foregroundColor(.black)
//             // .color(Color.white)
//                Spacer()
//            }
//        }
//        .cornerRadius(10)
//                .overlay(RoundedRectangle(cornerRadius: 8)
//                    .stroke(Color.orange, lineWidth: 10))
//                .shadow(radius: 10)
//    }
//}


struct AddReview_Previews: PreviewProvider {
    static var previews: some View {
        AddReview()
    }
}
