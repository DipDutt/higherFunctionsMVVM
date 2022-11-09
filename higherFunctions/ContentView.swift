//
//  ContentView.swift
//  higherFunctions
//
//  Created by dip dutt on 11/9/22.
//

import SwiftUI


struct userModel:Identifiable {
    
    
let id = UUID().uuidString
    
    let name:String?
    let point:Int
    let isverified:Bool
    
    
    
    
}


class arrayModificationViewModel:ObservableObject {
    
    
    @Published var dataArray:[userModel] = []
    @Published var filteredArray:[userModel] = []
    @Published var mapArray:[String] = []
    
    
    init() {
        
    getusers()
    updateFilteredarray()
        
        
    }
    
    
    
     // get the  data
    func getusers() {
        
        let user1 =  userModel(name: "Dip", point: 4, isverified: false)
        let user2 =  userModel(name: "Joy", point: 5, isverified: true)
        let user3 =  userModel(name: "Dipta", point:8, isverified: true)
        let user4 =  userModel(name: "Hrithik", point: 9, isverified: true)
        let user5 =  userModel(name: "Rock", point: 8, isverified: true)
        let user6 =  userModel(name: "Steve", point: 10, isverified: true)
        let user7 =  userModel(name: nil, point: 3, isverified: false)
        let user8 =  userModel(name: "Puja", point: 2, isverified:false )
        let user9 =  userModel(name: nil, point: 3, isverified: false)
        let user10 =  userModel(name: "Messi", point: 4, isverified: true)
        
        
        self.dataArray.append(contentsOf: [user1,user2, user3,user4,user5,user6,user7,user8,user9, user10])
        
        
        
        
        
    }
    
    
    // filtered the data by point.
    
    func updateFilteredarray() {
        
        // sort the array
        
        /*filteredArray = dataArray.sorted(by:{ $0.point > $1.point})*/
        
        // filter the array
        
       /*filteredArray = dataArray.filter({ (user) in
            
            
              return user.isverified
        })
        
        
        filteredArray = dataArray.filter({ $0.name.contains("D")})*/
        
        
        
        
        
        // map
        
        
        
        
        
        
        mapArray = dataArray.map({$0.name ?? "no name"})
        
        
        
        
        mapArray = dataArray.compactMap({$0.name})
        
        
        
    }

    
    
    
    
}




struct ContentView: View {
    
    @StateObject var hf = arrayModificationViewModel()
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                
                
                ForEach(hf.mapArray, id: \.self) { name in
                    
                    Text(name)
                        .font(.title)
                    
                }
                
                
//                ForEach(hf.filteredArray) { user in
//
//                    VStack(alignment: .leading) {
//
//
//                        Text(user.name)
//                            .font(.headline)
//
//
//
//                    }
//
//
//                    HStack {
//
//
//                        Text("points:\(user.point)")
//
//                        if user.isverified {
//
//
//                            Image(systemName: "flame.fill")
//
//                        }
//
//
//
//                    }
//                    //end of the hstack
//
//
//
//
//                }
//                // end for each
//
//                .foregroundColor(.white)
//                .padding()
//                .background(.blue)
//                .cornerRadius(10)
//                .padding()
                
                
                
            }
            //end of the vstack
            
        }
        
        //end of scrollview
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
