//
//  Health.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class Health: IObservable {
    
    private var mValue: Int
    var value: Int {
        set { mValue = newValue }
        get { return mValue }
    }
    
    init(value: Int) {
        mValue = value
    }
    
    func decrease(value: Int) {
        self.value -= value
        notifyAll(value: value)
    }
}
