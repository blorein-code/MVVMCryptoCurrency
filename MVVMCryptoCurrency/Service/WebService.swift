//
//  WebService.swift
//  MVVMCryptoCurrency
//
//  Created by Berke Topcu on 16.11.2022.
//

import Foundation

class WebService {
    /*
     Eğer bir fonksiyonda veri çekme işleminden sonra bir işlem yapıcaksak eğer completion bloğu oluşturup orada yapabilmek için
     @escaping kullanabiliriz. Eğer çektiğimiz veri birden fazla ise bunun bir veri dizisi olacağını unutmayalım.
     */
    func downloadCurrencies(url: URL, completion: @escaping ([CryptoCurreny]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([CryptoCurreny].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
                
            }
            //işlemleri başlatmak için resume kullanıyoruz. Kelime anlamından farklı bir durum.
        }.resume()
        
    }
}
