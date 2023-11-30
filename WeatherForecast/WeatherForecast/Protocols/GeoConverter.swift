import Foundation
import CoreLocation

protocol GeoConverter {
    func convertToAddressWith(coordinate: CLLocation, completionHandler: @escaping (Result<String,GeoConverterError>) -> Void )
}

extension GeoConverter {
    
    func convertToAddressWith(coordinate: CLLocation, completionHandler : @escaping (Result<String,GeoConverterError>) -> Void ) {
        let geoCoder = CLGeocoder()
        
        geoCoder.reverseGeocodeLocation(coordinate) { (placemarks, error) in
            if error != nil {
                completionHandler(.failure(.failCovertToAdress))
            }
            
            guard let placemark = placemarks?.last else { return }
            guard let name = placemark.subLocality else { return }
            
            completionHandler(.success(name))
            
        }
    }
}