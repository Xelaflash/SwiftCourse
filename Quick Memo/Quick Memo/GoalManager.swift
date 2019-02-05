//
//  GoalManager.swift
//  Quick Memo
//
//  Created by iFlash on 05/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import Foundation

class GoalManager {
     private var _goalList:[String]
    
    init() {
        _goalList = []
    }
    
    func getGoalCount() -> Int {
        return _goalList.count
    }
    
    func getGoal(atIndex index:Int) -> String {
        return _goalList[index]
    }
    
    func addGoal(withText text:String){
        _goalList.append(text)
    }
    
    func removeGoalAtIndex(atIndex index:Int) {
        _goalList.remove(at: index)
    }
}
