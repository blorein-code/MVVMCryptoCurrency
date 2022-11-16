//
//  CryptoCurrency.swift
//  MVVMCryptoCurrency
//
//  Created by Berke Topcu on 16.11.2022.
//

import Foundation

/*Çekilen verideki isimler ne ise aynı şekilde isimlendirdik ve Decodable yaptık. Bu bize
 kodu dönüştürmek, format değiştirmek gibi işlemlerin otomatik swift tarafından yapılmasını sağlıyor.
 
 Get -> Decodable
 Post -> Encodable
 Get+Post -> Codable
 
 */

struct CryptoCurreny : Decodable {
    
    let currency : String
    let price : String
}
