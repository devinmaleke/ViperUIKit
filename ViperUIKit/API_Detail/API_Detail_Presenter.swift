//
//  API_List_Presenter.swift
//  ViperUIKit
//
//  Created by Devin Maleke on 03/10/23.
//

import Foundation
//Talk to router
//Talk to View
//Talk to interactor

protocol API_Detail_Presenter_Protocol{
    var router: API_Detail_Router_Protocol? {get set}
    var interactor: API_Detail_Interactor_Protocol? {get set}
    var view: API_Detail_View_Protocol? {get set}
    
    func interactorUpdateData(api: API?)
    func viewDidLoad()
}

class APIDetail_Presenter: API_Detail_Presenter_Protocol{
    var router: API_Detail_Router_Protocol?
    
    var interactor: API_Detail_Interactor_Protocol?
    
    var view: API_Detail_View_Protocol?
    
    func interactorUpdateData(api: API?) {
        if let api = api{
            view?.update(with: api)
        }else{
            view?.update(with: "No Data")
        }
    }
    
    func viewDidLoad() {
        interactor?.getAPIData()
    }
}

