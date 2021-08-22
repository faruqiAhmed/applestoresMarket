//
//  MarketStreet.swift
//  applestores
//
//  Created by Md Omar Faruq on 8/21/21.
//

import SwiftUI

struct MarketStreet: View {
    var body: some View {
       
        NavigationView {
           
//            ZStack{
//                Color.red
//                .ignoresSafeArea()
            
            List {
              
                Image("R4031")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                VStack(alignment: .leading){
                    Spacer()
                    Text("R403-MarketStreet")
                    Spacer()
                    Text("Adress")
                    Spacer()
                    Text("Contact")
                }
                VStack(alignment: .leading) {
                    Text("Opening Hours")
                    VStack{
                              Text("            Monday > 8:00 - 10:00")
                        Text("            Tuesday > 8:00 - 10:00")
                        Text("           Wednesday > 8:00 - 10:00")
                        Spacer()
                        HStack{
                            Button(action: {
                              
                            }) {
                                HStack {
                                
                                    Text("Add Opening Sours ")
                                        //.fontWeight(.semibold)
                                       // .font(.title)
                                }
                                .padding()
                                .foregroundColor(.black)
                                .background(Color.gray)
                                .cornerRadius(120)
                            }
                        }
                    }
                }
 
                VStack{
                    Text("Reviews")
                }
                    VStack(alignment: .leading){
                        VStack{
                            Text("User Name")
                        }
                       Spacer()
                       // Text("User Name")
                        Text("SwiftUI Text has also gotten two initializers for wrapping dates in strings — namely a date interval and a date range, with an optional argument to set the style.")
                        
                        
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                VStack{
                    HStack{
                        Button(action: {
                          
                        }) {
                            HStack {
                            
                                Text("Add Reviews ")
                                    //.fontWeight(.semibold)
                                   // .font(.title)
                            }
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray)
                            .cornerRadius(120)
                        }
                    }
                }
            }
                .navigationBarTitle(Text("R403-MarketStreet"))
            
    }
            
           
        }
        
    }



struct MarketStreet_Previews: PreviewProvider {
    static var previews: some View {
        MarketStreet()
    }
}
