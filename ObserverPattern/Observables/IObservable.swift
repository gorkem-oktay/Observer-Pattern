//
//  IObservable.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

class IObservable {
    
    var observers = [IObserver]()
    
    func addObserver(observer: IObserver) {
        observers.append(observer)
    }
    
    func notifyAll(value: Any) {
        for observer in observers {
            observer.updated(observable: self, value: value)
        }
    }
}
