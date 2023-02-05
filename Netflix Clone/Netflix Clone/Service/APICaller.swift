//
//  APICaller.swift
//  Netflix Clone
//
//  Created by danish on 05/02/23.
//

import Foundation

struct K{
    static let key = "eef8ebd9"
    static let baseURL = "https://www.omdbapi.com/"
    
}
class APICaller{
    static let share = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[SearchModel], Error>) -> Void){
        let value = "game"
        let stringURL = "\(K.baseURL)?apikey=\(K.key)&s=\(value)"
        
        guard let url = URL(string: stringURL) else{ return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){
            data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let results: APIResponseModel = try JSONDecoder().decode(APIResponseModel.self, from: data)
                completion(.success(results.Search))
            }
            catch{
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    
}
