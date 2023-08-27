//
//  Annotation.swift
//  Map_Task_ITI
//
//  Created by Abdelrahman Esmail on 24/08/2023.
//

import Foundation
import MapKit

class Annotation : NSObject,MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String? = nil, subtitle: String? = nil) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
