//
//  ToastManager.swift
//  TCAPractice
//
//  Created by devdchaudhary on 20/06/23.
//

import Toast
import UIKit

struct ToastManager {
    
    func show(
        _ title: String,
        subTitle: String = "",
        image: UIImage? = nil,
        haptic: UINotificationFeedbackGenerator.FeedbackType = .success)
    {
        
        if let image = image {
            let toast = Toast.default(
                image: image,
                title: title,
                subtitle: subTitle
            )
            toast.show(haptic: haptic)
        }else {
            let toast = Toast.text(title, subtitle: subTitle)
            toast.show(haptic: haptic)
        }
        
        
    }
    
    func showSuccess(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "checkmark.seal.fill"), haptic: .success)
    }
    
    func showWarning(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "exclamationmark"), haptic: .warning)
    }
    
    func showError(_ title: String, subtitle: String = "") {
        show(title, subTitle: subtitle, image: UIImage(systemName: "xmark.seal"), haptic: .error)
    }
    
}
