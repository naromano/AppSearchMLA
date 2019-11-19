//
//  SceneDelegate.swift
//  Ejemplo
//
//  Created by usuario on 17/11/2019.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {return}
        
        
        let nc = UINavigationController(rootViewController: SearcherViewController())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        window?.windowScene = windowScene
        
        
    }
    
    private func setupView(){
        
    }

    


}

