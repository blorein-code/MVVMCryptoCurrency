//
//  CryptoViewModel.swift
//  MVVMCryptoCurrency
//
//  Created by Berke Topcu on 16.11.2022.
//

import Foundation

//Çoğul olan viewmodel
struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurreny]
}

extension CryptoListViewModel {
    //Satırlarda gösterilecek veriler için ViewModel içerisinde bir fonksiyon oluşturduk ve override'a benzer bir işlem yaptık
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    //CryptoViewModel dönen bir index function oluşturduk
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}

//Tekil olan viewmodel
struct CryptoViewModel {
    let cryptoCurrency : CryptoCurreny
}

extension CryptoViewModel {
    var name : String {
        return self.cryptoCurrency.currency
    }
    
    var price : String {
        return self.cryptoCurrency.price
    }
}
