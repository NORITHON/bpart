//
//  Funding.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//


import Foundation

struct Funding :Hashable{
    
    var category: String
    var title: String
    var description: String
    var currentAmount: Int
    var targetAmount: Int
    var id: String
    var media: String
    var milestones: [Milestone]
    var participationCount: Int
    var isFavorite: Bool
    //add location struct
    

}
struct Milestone: Hashable {
    var type: String
    var what: String
    var who: String
    var isDone: Bool
    var completionRate: Int
}


//define location struct


extension Funding{
    static func all()->[Funding] {
        return [
            Funding(category: "추천",
                    title: "가나 교육사업 프로젝트",
                    description: "\"저희 동네에도 학교가 지어졌지만,\n선생님이 안계셔서 공부를 할 수 없어요\"",
                    currentAmount: 74, targetAmount: 100, id: "1111", media: "sample",
                    milestones: [
                        Milestone(type: "check",what: "학교건설", who: "현대건설",isDone: true,completionRate: 0),
                        Milestone(type: "check",what: "기기지원", who: "Samsung",isDone: false,completionRate: 0),
                        Milestone(type: "progress",what: "교사채용 및 학교운영", who: "개인 후원",isDone: false,completionRate: 73),
                    ],
                    participationCount: 262,isFavorite: true),
        ]
    }
    
    static func edu() -> [String]{
        return [
        "edu3"
        ]
    }
    
    static func water() -> [String]{
        return [
        "water1","water2","water3"
        ]
    }
    static func food() -> [String]{
        return [
        "food1","food2","food3"
        ]
    }
    static func right() -> [String]{
        return [
        "right1","right2","right3"
        ]
    }
    
    //no econ yet
    static func econ() -> [String]{
        return [
        "edu3"
        ]
    }
}
