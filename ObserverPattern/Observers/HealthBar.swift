//
//  HealthBar.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class HealthBar: IObserver {
    
    private var mName: String
    var name: String {
        set { mName = newValue }
        get { return mName }
    }
    
    init(name: String) {
        mName = name
    }
    
    func updated(observable: IObservable, value: Any) {
        if let health = observable as? Health {
            print("\(name) received \(value) damage and \(health.value) health left")
        }
    }
}
