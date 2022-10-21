
import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    @IBOutlet weak var hatView: UIView!
    @IBOutlet weak var neckView: UIView!
    @IBOutlet weak var kit: SCNView!
    //other
    var hatPos:Float = 0
    var neckPos:Float = 0
   //core scene
    var scene:SCNScene!
    var tbh:SCNNode!
    //hats
    var devilhorns:SCNNode!
    var clownafro:SCNNode!
    var THat:SCNNode!
    var wolfEars:SCNNode!
    var cowboy:SCNNode!
    var nija:SCNNode!
    var pinkhair:SCNNode!
    //necklace
    var saphire:SCNNode!
    var monies:SCNNode!
    var sonichu:SCNNode!
    var spikedcollar:SCNNode!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setupscene()
            setupnodes()
        
    }
    func setupscene(){
        //connects scene node to scnkit scene and connects kitviewto scene
        scene = SCNScene(named: "tbhScene.scn")
        kit.scene = scene
        
    }
    
    func setupnodes(){
        //connects nodes to scnkit scene
        devilhorns = scene.rootNode.childNode(withName: "devilhorns", recursively: true)
        tbh = scene.rootNode.childNode(withName: "THETBH", recursively: true)
        clownafro = scene.rootNode.childNode(withName: "afro", recursively: true)
        wolfEars = scene.rootNode.childNode(withName: "wolfEars", recursively: true)
        THat = scene.rootNode.childNode(withName: "THat", recursively: true)
        monies = scene.rootNode.childNode(withName: "monies", recursively: true)
        saphire = scene.rootNode.childNode(withName: "saphire", recursively: true)
        sonichu = scene.rootNode.childNode(withName: "sonichu", recursively: true)
        spikedcollar = scene.rootNode.childNode(withName: "SpikedCollar", recursively: true)
        cowboy = scene.rootNode.childNode(withName: "cowboyhat", recursively: true)
        nija = scene.rootNode.childNode(withName: "ninjaheadband", recursively: true)
        pinkhair = scene.rootNode.childNode(withName: "pinkhair", recursively: true)

    }
    //side scrolling
    @IBAction func movehatleft(_ sender: UIButton) {
        if hatPos <= -5 {
            hatPos = hatPos + 30
        }
        hatView.transform = CGAffineTransform(translationX: CGFloat(hatPos), y: 0)
    }
    
    @IBAction func movehatright(_ sender: UIButton) {
        if hatPos >= -230{
            hatPos = hatPos + -20
            hatView.transform = CGAffineTransform(translationX: CGFloat(hatPos), y: 0)
            
        }
    }
    
    //necklace scroll
    @IBAction func moveneckleft(_ sender: UIButton) {
        if neckPos <= -5 {
            neckPos = neckPos + 20
        }
        neckView.transform = CGAffineTransform(translationX: CGFloat(neckPos), y: 0)
    }
    
    @IBAction func moveneckright(_ sender: UIButton) {
        if neckPos >= -100{
            neckPos = neckPos + -20
            neckView.transform = CGAffineTransform(translationX: CGFloat(neckPos), y: 0)
            
        }

    }
    
    
    //hat selection
    //
    @IBAction func DevilHorns(_ sender: UIButton) {
        if devilhorns.isHidden{
            devilhorns.isHidden = false
            clownafro.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = true
            cowboy.isHidden = true
            nija.isHidden = true
            pinkhair.isHidden = true
        }else{
            devilhorns.isHidden = true
        }
    }
    
    @IBAction func clownAfro(_ sender: UIButton) {
        if clownafro.isHidden{
            clownafro.isHidden = false
            devilhorns.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = true
            cowboy.isHidden = true
            nija.isHidden = true
            pinkhair.isHidden = true
        }else{
            clownafro.isHidden = true
        }
    }

    @IBAction func wolfEars(_ sender: UIButton) {
        if wolfEars.isHidden{
            clownafro.isHidden = true
            devilhorns.isHidden = true
            wolfEars.isHidden = false
            THat.isHidden = true
            cowboy.isHidden = true
            nija.isHidden = true
            pinkhair.isHidden = true
        }else{
            wolfEars.isHidden = true
        }
    }
    
  
    @IBAction func THat(_ sender: UIButton) {
        if THat.isHidden{
            clownafro.isHidden = true
            devilhorns.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = false
            cowboy.isHidden = true
            nija.isHidden = true
            pinkhair.isHidden = true
        }else{
            THat.isHidden = true
        }
    }
    

    @IBAction func cowboyHat(_ sender: UIButton) {
        if cowboy.isHidden{
            clownafro.isHidden = true
            devilhorns.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = true
            cowboy.isHidden = false
            nija.isHidden = true
            pinkhair.isHidden = true
        }else{
            cowboy.isHidden = true
        }
    }
    
    @IBAction func ninja(_ sender: UIButton) {
        if nija.isHidden{
            clownafro.isHidden = true
            devilhorns.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = true
            cowboy.isHidden = true
            nija.isHidden = false
            pinkhair.isHidden = true
        }else{
            nija.isHidden = true
        }

    }
    
    @IBAction func pinkhair(_ sender: UIButton) {
        if pinkhair.isHidden{
            clownafro.isHidden = true
            devilhorns.isHidden = true
            wolfEars.isHidden = true
            THat.isHidden = true
            cowboy.isHidden = true
            nija.isHidden = true
            pinkhair.isHidden = false
        }else{
            pinkhair.isHidden = true
        }
    }
    
    //necklace selection
    //
    @IBAction func saph(_ sender: UIButton) {
        if saphire.isHidden{
            monies.isHidden = true
            saphire.isHidden = false
            sonichu.isHidden = true
            spikedcollar.isHidden = true
        }else{
            saphire.isHidden = true
        }
    }
    
    @IBAction func mons(_ sender: UIButton) {
        if monies.isHidden{
            monies.isHidden = false
            saphire.isHidden = true
            sonichu.isHidden = true
            spikedcollar.isHidden = true
        }else{
            monies.isHidden = true
        }

    }
    
    @IBAction func sonic(_ sender: UIButton) {
        if sonichu.isHidden{
            monies.isHidden = true
            saphire.isHidden = true
            sonichu.isHidden = false
            spikedcollar.isHidden = true
        }else{
            sonichu.isHidden = true
        }

    }
    
    @IBAction func SCollar(_ sender: UIButton) {
        if spikedcollar.isHidden{
            monies.isHidden = true
            saphire.isHidden = true
            sonichu.isHidden = true
            spikedcollar.isHidden = false
        }else{
            spikedcollar.isHidden = true
        }

    }
    
    
    
    //shirts
    //
}
