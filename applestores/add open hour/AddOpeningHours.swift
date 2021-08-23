//
//  AddOpeningHours.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/22/21.
//

import SwiftUI
 
struct AddOpeningHours: View {
    @State var date:  String = ""
    @State var t: String = ""
    @State var tim: String = ""
    var body: some View {
        
        NavigationView {
            ZStack{
               Rectangle()
                .fill(Color("backgroun"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        List{
//            VStack{
//                Text("Opening Hours")
//            }
            VStack{
                TextField("Friday", text: $date)
               
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.10))
                    .cornerRadius(20)
                    .padding(.top,15)
//                    .padding(.all)
//                    .modifier(CustomTextFieldModifier())
            }
            ZStack{
                Text("Selet day from picker")
            }
            
      VStack{
//            Color.white
//            .ignoresSafeArea()
            
    
            HStack{
            
         
                TextField("10:00", text: $t)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.10))
                    .cornerRadius(20)
                    .padding(.top,15)
                
//                    .padding(.all)
//                    .modifier(CustomTextFieldModifier())
               Divider()
                
                VStack(alignment: .center){
                   
//                    Text("open")
                    TextField("8.00", text: $date)
                  
//                    Text("Close")
                    
//                    TextField("10.00", text: $date)
//                    Spacer()
                    
                    
                }
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.10))
                .cornerRadius(20)
                .padding(.top,15)
//                .padding(.all)
//                .modifier(CustomTextFieldModifier())
               
            }
        }
            HStack{
                Text("Opening Hours")
                Spacer()
                VStack{
                    Text("Closing Hours")
                }
                
            
            }
            
            VStack{
                RoundedButton().padding(.top, 20)
            }
            
        }
        .navigationBarTitle(Text("Opening Hours"))
        }
        }
                        
//        ZStack{
//        VStack{
//
//            HStack{
//                TextField("Friday", text: $date)
//            }.padding()
//            .modifier(CustomTextFieldModifier())
//            HStack{
////                Image(systemName: “lock.fill”)
//            SecureField("10:00", text: $t)
//                Spacer()
//                SecureField("10:00", text: $t)
//
//            }.padding()
//            .modifier(CustomTextFieldModifier())
//        }
//
//    }
    }
}

struct RoundedButton : View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("SAVE")
//                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.subheadline)
                    .fontWeight(.semibold)
//                    .padding(15)
//                    .background(Color.orange)
//                           .foregroundColor(.black)
             // .color(Color.white)
                Spacer()
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(120)
    }
}

    

//struct CustomTextFieldModifier: ViewModifier {
//func body(content: Content) -> some View {
//content.background(Color.white)
//.cornerRadius(10)
//.overlay(
//RoundedRectangle(cornerRadius: 10)
//.stroke(Color.black.opacity(0.05), lineWidth: 4)
//.shadow(color: Color.black.opacity(0.2), radius: 6, x: 6, y: 6)
//.clipShape(RoundedRectangle(cornerRadius: 10))
//.shadow(color: Color.black.opacity(0.2), radius: 6, x: -6, y: -6)
//.clipShape(RoundedRectangle(cornerRadius: 15))
//)
//}
//}

struct AddOpeningHours_Previews: PreviewProvider {
    static var previews: some View {
        AddOpeningHours()
    }
}
