//
//  FundingMapView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

//
//  FundingMapView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
// 0

import SwiftUI
import MapKit


struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let country: String
    let tag: String //물 교육 인권 일자리 보건 Water, Education, Human Rights, Workforce, Health
    let imageURL: String
}


struct FundingMapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0.783195, longitude: 15),span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 70))
    @State private var selectedPlace: Location?
    @State var input: String = ""
    @State var imageurl_var: String = ""
    @State var selectedIndex: Int = 0
    let geo_dummy = [
        Location(coordinate: CLLocationCoordinate2D(latitude: 29.912289, longitude: 5.641287), country: "South Sudan", tag: "Education", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 0.175897, longitude: 10.466159), country: "Gahna", tag: "Education", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 2.801340, longitude: 32.795292), country: "Uganda", tag: "Water", imageURL: "Uganda"),
        Location(coordinate: CLLocationCoordinate2D(latitude: -14.403812, longitude: 23.757980), country: "Zambia", tag: "Human Rights", imageURL: "Zambia"),
        Location(coordinate: CLLocationCoordinate2D(latitude: 20.957217, longitude: 12.525986), country: "Ethiopia", tag: "Health", imageURL: "Ethiopia"),
        Location(coordinate: CLLocationCoordinate2D(latitude: 14.896299, longitude: -4.871375), country: "Senegal", tag: "Water", imageURL: "Senegal"),
        
        Location(coordinate: CLLocationCoordinate2D(latitude: 2, longitude: 38), country: "Gahna", tag: "Education", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 7, longitude: 12), country: "Gahna", tag: "Water", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 0.6, longitude: 20), country: "Gahna", tag: "Health", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 0.8, longitude: 17), country: "Gahna", tag: "Human Rights", imageURL: ""),
        Location(coordinate: CLLocationCoordinate2D(latitude: 1.0, longitude: 24), country: "Gahna", tag: "Workforce", imageURL: ""),
    ]
    
    var buttonStrings : [String] = ["교육","식수시설", "식량시설", "보건시설", "인권보호", "경제성장"]
    @State private var emptyArray = [String]()
    var body: some View {
        
        NavigationView{
            VStack{
                ScrollView(.horizontal){
                    HStack{
                        ForEach(0..<6, id: \.self ){ idx in
                            Button {
                                //change selectednumber
                                selectedIndex = idx
                            } label: {
                                
                                ZStack {
                                    Text(buttonStrings[idx])
                                        .font(.custombody4)
                                        .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 30)
                                                .stroke(idx == selectedIndex ? Color.teal : Color.clear, lineWidth: 2)
                                        ).padding(0)
                                        .foregroundColor(idx == selectedIndex ? .teal : .white)
                                    
                                }.background(idx == selectedIndex ? Color.clear : .teal)
                                    .opacity(0.8)
                                    .cornerRadius(10.0)
                                    .padding(6)
                                
                            }
                        }
                        
                    }
                }
                Map(coordinateRegion: $mapRegion, annotationItems: geo_dummy) {dummy in
                    MapAnnotation(coordinate: dummy.coordinate) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width:15, height:15)
                            .clipShape(Circle())
                            .onTapGesture{
                                selectedPlace = dummy
                            }
                    }
                }.sheet(item: $selectedPlace){ place in
                    //imageurl_var = Text(place.imageURL)
                    VStack{
                        Image("map").resizable().aspectRatio(contentMode: .fill)
                        //.frame(width: 300, height: 400, alignment: .topLeading)
                        //                    Text(place.imageURL)
                        //UIImage(place.imageURL)
                    }
                    .presentationDetents([.fraction(0.8)])
                }
            }
            
        }.searchable(text: $input, prompt: "원하는 지역을 검색해보세요")

    }
    
    
}

struct FundingMapView_Previews: PreviewProvider {
    static var previews: some View {
        FundingMapView()
    }
}
