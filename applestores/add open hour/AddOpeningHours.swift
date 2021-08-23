//
//  AddOpeningHours.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/22/21.
//

import SwiftUI
 
struct AddOpeningHours: View {
    @State private  var date = ""
    @State var t: String = ""
    @State var tim: String = ""
    @State private var wakeUp = Date()
    @State private var wakeUp2 = Date()
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
            
                DatePicker("", selection: $wakeUp, displayedComponents: .hourAndMinute)
               // TextField("10:00", text: $t)
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.10))
                    .cornerRadius(20)
                    .padding(.top,15)
                
             .padding(.all)                
               Divider()
                
                VStack(alignment: .center){
                    DatePicker("", selection: $wakeUp, displayedComponents: .hourAndMinute)
//                    Text("open")
//                    TextField("8.00", text: $date)
                  
//                    Text("Close")
                    
//                    TextField("10.00", text: $date)
//                    Spacer()
                    
                    
                }
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.10))
                .cornerRadius(20)
                .padding(.top,15)
          .padding(.all)
               
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


struct AddOpeningHours_Previews: PreviewProvider {
    static var previews: some View {
        AddOpeningHours()
    }
}
