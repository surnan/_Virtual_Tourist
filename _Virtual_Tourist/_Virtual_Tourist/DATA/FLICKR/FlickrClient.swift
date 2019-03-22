//
//  FlickrClient.swift
//  _Virtual_Tourist
//
//  Created by admin on 3/18/19.
//  Copyright © 2019 admin. All rights reserved.
//
//https://api.flickr.com/services

import Foundation

class FlickrClient {
    
    private enum Endpoints {
        static let base = "https://api.flickr.com/services/rest/?"
        case photosSearch(Double, Double, Int, Int32)   //Int32 because it's from core data and no need to convert types
        case getOnePicture(String , String)
        case getPhotosGetSizes(String)
        case photoDownloadURL()
        
        var toString: String {
            switch self {
            case .photosSearch(let latitude, let longitude, let maxPull, let page): return Endpoints.base
                + "method=flickr.photos.search"
                + "&api_key=\(API_KEY)"
                + "&lat=\(latitude)"
                + "&lon=\(longitude)"
                + "&per_page=\(maxPull)"
                + "&page=\(page)"
                + "&format=json"
                + "&nojsoncallback=1"
            case .getOnePicture(let photoID, let secret): return Endpoints.base
                + "method=flickr.photos.getInfo"
                + "&api_key=\(API_KEY)"
                + "&photo_id=\(photoID)"
                + "&secret=\(secret)"
                + "&format=json"
                + "&nojsoncallback=1"
            case .getPhotosGetSizes(let photo_id): return Endpoints.base
                + "method=flickr.photos.getSizes"
                + "&api_key=\(API_KEY)"
                + "&photo_id=\(photo_id)"
                + "&format=json"
                + "&nojsoncallback=1"
            case .photoDownloadURL(): return ""
            }
        }
        var url: URL {
            return URL(string: toString)!
        }
    }
    
    class func getImageURLs(){
        
        
        let url = Endpoints.photosSearch(<#T##Double#>, <#T##Double#>, <#T##Int#>, <#T##Int32#>)
        
        
        
        
        
    }
    
    
    
    
}
