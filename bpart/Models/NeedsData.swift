//
//  NeedsData.swift
//  bpart
//
//  Created by 채정영 on 1/28/23.
//

import Foundation

struct NeedsData : Hashable {
    let id: String
    let imageURL: String
    let organization: String
    let orgURL: String
    let description: String
    let numLikes : Int
    let numComments : Int
    let timestamp : String
    
    
}


extension NeedsData {
    static func all() -> [NeedsData] {
        return [
            NeedsData(id: "1", imageURL: "back1", organization: "Samsung", orgURL: "org1", description: "팔레스타인 난민촌을 위한 도움이 필요해요", numLikes: 912, numComments: 72, timestamp: "2015.03.19"),
            NeedsData(id: "2", imageURL: "back2", organization: "Unicef", orgURL: "org2", description: "디지털 문맹 개선을 위한 서비스가 필요해요", numLikes: 710, numComments: 60, timestamp: "2021.10.22"),
            NeedsData(id: "3", imageURL: "back3", organization: "Canada", orgURL: "org3", description: "자금난을 겪는 소상공인을 도와줍시다", numLikes: 420, numComments: 55, timestamp: "2020.03.21"),
            NeedsData(id: "4", imageURL: "back4", organization: "비파트", orgURL: "org4", description: "북한 인권을 위한 도움을 주고 싶어요", numLikes: 310, numComments: 70, timestamp: "2022.06.25"),
            NeedsData(id: "5", imageURL: "back5", organization: "에이파트", orgURL: "org5", description: "가나의 영재교육을 위한 서비스를 만들어요", numLikes: 210, numComments: 10, timestamp: "2021.02.01"),
            NeedsData(id: "6", imageURL: "back6", organization: "비지니스   ", orgURL: "org6", description: "미얀마 임산부를 위한 좌석이 필요해요", numLikes: 100, numComments: 30, timestamp: "2022.03.22")
        ]
    }
}
