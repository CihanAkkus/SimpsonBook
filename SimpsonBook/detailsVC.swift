import UIKit

class detailsVC: UIViewController {
    
    let image = UIImageView()
    let nameLabel = UILabel()
    let jobLabel = UILabel()
    
    var selectedSimpson : Simpsons?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        image.frame = CGRect(x: width*0.5 - width*0.8/2,y: height*0.20 , width: width*0.8, height: height*0.4)
        view.addSubview(image)
        
        nameLabel.text = "Name label"
        nameLabel.textAlignment = .center
        nameLabel.frame = CGRect(x: width*0.5 - width*0.8/2,y: height * 0.6 ,width: width*0.8,height:height*0.1)
        view.addSubview(nameLabel)
        
        jobLabel.text = "Job Label"
        jobLabel.textAlignment = .center
        jobLabel.frame = CGRect(x: width*0.5 - width*0.8/2,y: height * 0.7,width: width*0.8, height: height*0.1)
        view.addSubview(jobLabel)
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        image.image = selectedSimpson?.image
        
        
    
    }
    


}
