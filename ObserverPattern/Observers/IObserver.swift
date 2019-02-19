//
//  IObserver.swift
//  ObserverPattern
//
//  Created by Görkem Oktay on 19.02.2019.
//  Copyright © 2019 Görkem Oktay. All rights reserved.
//

protocol IObserver {
    
    func updated(observable: IObservable, value: Any)
}
