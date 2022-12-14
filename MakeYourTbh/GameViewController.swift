
import UIKit
import QuartzCore
import SceneKit
import Photos

class GameViewController: UIViewController {

    @IBOutlet weak var hatView: UIView!
    @IBOutlet weak var neckView: UIView!
    @IBOutlet weak var pantsView: UIView!
    @IBOutlet weak var shirtView: UIView!
    @IBOutlet weak var kit: SCNView!
    @IBOutlet weak var propView: UIView!
    //other
    var hatPos:Float = 0
    var neckPos:Float = 0
    var pantsPos:Float = 0
    var shirtPos:Float = 0
    var propPos:Float = 0
    var box:SCNNode!
    //cur/last system
    var current:SCNNode!
    var last:SCNNode!
    var LCurrent:SCNNode!
    var LLast:SCNNode!
    var PCurrent:SCNNode!
    var PLast:SCNNode!
    var shirCurrent:SCNNode!
    var shirLast:SCNNode!
    var envCurr:SCNNode!
    var envLast:SCNNode!
    var propC:SCNNode!
    var propL:SCNNode!
    var extC:SCNNode!
    var extL:SCNNode!
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
    var winner:SCNNode!
    var scarf:SCNNode!
    //pants
    var bluePants:SCNNode!
    var redPolkdot:SCNNode!
    var appleBottoms:SCNNode!
    var biegeShorts:SCNNode!
    var overalls:SCNNode!
    var shortshorts:SCNNode!
    var snans:SCNNode!
    //shirt
    var threeEye:SCNNode!
    var redShirt:SCNNode!
    var canadaLove:SCNNode!
    var floral:SCNNode!
    var killerSweater: SCNNode!
    var sweatyShirt: SCNNode!
    var chris:SCNNode!
    //enviroments
    var burningHouse: SCNNode!
    var clownStage: SCNNode!
    var chrisRoom: SCNNode!
    //props
    var angy:SCNNode!
    var clownNose:SCNNode!
    var monocle:SCNNode!
    var mustach:SCNNode!
    var nose:SCNNode!
    //extra
    var bana:SCNNode!
    var bomb:SCNNode!
    var devilTrident:SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //did load
            setupscene()
            setupnodes()
            firstlastSetup()
    }
    
    func setupscene(){
        //connects scene node to scnkit scene and connects kitviewto scene
        scene = SCNScene(named: "tbhScene.scn")
        kit.scene = scene
        
    }
    func firstlastSetup(){
        //removes "found nil" error post first/last equip system
        last = box
        current = box
        LLast = box
        LCurrent = box
        PLast = box
        PCurrent = box
        shirLast = box
        shirCurrent = box
        envCurr = box
        envLast = box
        propC = box
        propL = box
        extC = box
        extL = box
        
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
        bluePants = scene.rootNode.childNode(withName: "tbhpants", recursively: true)
        winner = scene.rootNode.childNode(withName: "winner", recursively: true)
        redPolkdot = scene.rootNode.childNode(withName: "polkadotpants", recursively: true)
        box = scene.rootNode.childNode(withName: "box", recursively: true)
        scarf = scene.rootNode.childNode(withName: "scarf", recursively: true)
        appleBottoms = scene.rootNode.childNode(withName: "appleBottoms", recursively: true)
        biegeShorts = scene.rootNode.childNode(withName: "biegeShorts", recursively: true)
        overalls = scene.rootNode.childNode(withName: "overalls", recursively: true)
        shortshorts = scene.rootNode.childNode(withName: "shortshorts", recursively: true)
        snans = scene.rootNode.childNode(withName: "snans", recursively: true)
        threeEye = scene.rootNode.childNode(withName: "Catstripes", recursively: true)
        redShirt = scene.rootNode.childNode(withName: "redShirt", recursively: true)
        canadaLove = scene.rootNode.childNode(withName: "CanadaLove", recursively: true)
        floral = scene.rootNode.childNode(withName: "floral shirt", recursively: true)
        killerSweater = scene.rootNode.childNode(withName: "killerSweater", recursively: true)
        sweatyShirt = scene.rootNode.childNode(withName: "sweatyShirt", recursively: true)
        burningHouse = scene.rootNode.childNode(withName: "burningBuilding", recursively: true)
        clownStage = scene.rootNode.childNode(withName: "pokadotEnv", recursively: true)
        //
        chris = scene.rootNode.childNode(withName: "chris", recursively: true)
        chrisRoom = scene.rootNode.childNode(withName: "chrisRoom", recursively: true)
        angy = scene.rootNode.childNode(withName: "angy", recursively: true)
        clownNose = scene.rootNode.childNode(withName: "clownNose", recursively: true)
        monocle = scene.rootNode.childNode(withName: "monocle", recursively: true)
        mustach = scene.rootNode.childNode(withName: "mustach", recursively: true)
        nose = scene.rootNode.childNode(withName: "nose", recursively: true)
        bana = scene.rootNode.childNode(withName: "bana", recursively: true)
        bomb = scene.rootNode.childNode(withName: "bomb", recursively: true)
        devilTrident = scene.rootNode.childNode(withName: "devil trident", recursively: true)
    }
    
    @IBAction func reset(_ sender: UIButton) {
        current.isHidden = true
        LCurrent.isHidden = true
        PCurrent.isHidden = true
        shirCurrent.isHidden = true
        envCurr.isHidden = true
        propC.isHidden = true
        extC.isHidden = true
    }
    
    @IBAction func screenShot(_ sender: UIButton) {
        UIGraphicsBeginImageContextWithOptions(kit.bounds.size, true, 0.0)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        
        var img = kit.snapshot()
        UIGraphicsEndImageContext()
        
        UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil)
    }
    //side scrolling
    @IBAction func movehatleft(_ sender: UIButton) {
        if hatPos <= -5 {
            hatPos = hatPos + 40
        }
        hatView.transform = CGAffineTransform(translationX: CGFloat(hatPos), y: 0)
    }
    
    @IBAction func movehatright(_ sender: UIButton) {
        if hatPos >= -230{
            hatPos = hatPos + -40
            hatView.transform = CGAffineTransform(translationX: CGFloat(hatPos), y: 0)
            
        }
    }
    
    //necklace scroll
    @IBAction func moveneckleft(_ sender: UIButton) {
        if neckPos <= -5 {
            neckPos = neckPos + 40
        }
        neckView.transform = CGAffineTransform(translationX: CGFloat(neckPos), y: 0)
    }
    
    @IBAction func moveneckright(_ sender: UIButton) {
        if neckPos >= -170{
            neckPos = neckPos + -40
            neckView.transform = CGAffineTransform(translationX: CGFloat(neckPos), y: 0)
        }
    }
    //pants scroll
    @IBAction func movepantsleft(_ sender: UIButton) {
        if pantsPos <= -5 {
            pantsPos = pantsPos + 40
        }
        pantsView.transform = CGAffineTransform(translationX: CGFloat(pantsPos), y: 0)
    }
    @IBAction func movepantsright(_ sender: UIButton) {
        if pantsPos >= -250{
            pantsPos = pantsPos + -40
            pantsView.transform = CGAffineTransform(translationX: CGFloat(pantsPos), y: 0)
        }
    }
    //shirts scroll
    @IBAction func moveshirtleft(_ sender: UIButton) {
        if shirtPos <= -5 {
            shirtPos = shirtPos + 40
        }
        shirtView.transform = CGAffineTransform(translationX: CGFloat(shirtPos), y: 0)
    }
    
    @IBAction func moveshirtright(_ sender: UIButton) {
        if shirtPos >= -200{
            shirtPos = shirtPos + -40
            shirtView.transform = CGAffineTransform(translationX: CGFloat(shirtPos), y: 0)
        }
    }
    //prop scroll
    @IBAction func movePropLeft(_ sender: UIButton) {
        if propPos <= -5 {
            propPos = propPos + 40
        }
        propView.transform = CGAffineTransform(translationX: CGFloat(propPos), y: 0)
    }
    
    @IBAction func movePropRight(_ sender: UIButton) {
        if propPos >= -150{
            propPos = propPos + -40
            propView.transform = CGAffineTransform(translationX: CGFloat(propPos), y: 0)
        }
    }
    
    //hat selection
    //
    @IBAction func DevilHorns(_ sender: UIButton) {
        if devilhorns.isHidden{
            last = current
            current = devilhorns
            last.isHidden = true
            current.isHidden = false
        }else{
            devilhorns.isHidden = true
        }
    }
    
    @IBAction func clownAfro(_ sender: UIButton) {
        if clownafro.isHidden{
            last = current
            current = clownafro
            last.isHidden = true
            current.isHidden = false
        }else{
            clownafro.isHidden = true
        }
    }

    @IBAction func wolfEars(_ sender: UIButton) {
        if wolfEars.isHidden{
            last = current
            current = wolfEars
            last.isHidden = true
            current.isHidden = false
        }else{
            wolfEars.isHidden = true
        }
    }
    
  
    @IBAction func THat(_ sender: UIButton) {
        if THat.isHidden{
            last = current
            current = THat
            last.isHidden = true
            current.isHidden = false
        }else{
            THat.isHidden = true
        }
    }
    

    @IBAction func cowboyHat(_ sender: UIButton) {
        if cowboy.isHidden{
            last = current
            current = cowboy
            last.isHidden = true
            current.isHidden = false
        }else{
            cowboy.isHidden = true
        }
    }
    
    @IBAction func ninja(_ sender: UIButton) {
        if nija.isHidden{
            last = current
            current = nija
            last.isHidden = true
            current.isHidden = false
        }else{
            nija.isHidden = true
        }

    }
    
    @IBAction func pinkhair(_ sender: UIButton) {
        if pinkhair.isHidden{
            last = current
            current = pinkhair
            last.isHidden = true
            current.isHidden = false
        }else{
            pinkhair.isHidden = true
        }
    }
    
    //necklace selection
    //
    @IBAction func saphire(_ sender: UIButton) {
        if saphire.isHidden{
            LLast = LCurrent
            LCurrent = saphire
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            saphire.isHidden = true
        }
    }
    
    @IBAction func dollar(_ sender: UIButton) {
        if monies.isHidden{
            LLast = LCurrent
            LCurrent = monies
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            monies.isHidden = true
        }

    }
    @IBAction func sonichu(_ sender: UIButton) {
        if sonichu.isHidden{
            LLast = LCurrent
            LCurrent = sonichu
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            sonichu.isHidden = true
        }
    }
    
    @IBAction func spikedC(_ sender: UIButton) {
        if spikedcollar.isHidden{
            LLast = LCurrent
            LCurrent = spikedcollar
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            spikedcollar.isHidden = true
        }

    }
    @IBAction func winner(_ sender: UIButton) {
        if winner.isHidden{
            LLast = LCurrent
            LCurrent = winner
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            winner.isHidden = true
        }
    }
    
    @IBAction func scarf(_ sender: UIButton) {
        if scarf.isHidden{
            LLast = LCurrent
            LCurrent = scarf
            LLast.isHidden = true
            LCurrent.isHidden = false
        }else{
            scarf.isHidden = true
        }
    }
    
    //pants
    //
    @IBAction func bluepans(_ sender: UIButton) {
        if bluePants.isHidden{
            PLast = PCurrent
            PCurrent = bluePants
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            bluePants.isHidden = true
        }
    }
    
    @IBAction func redpans(_ sender: UIButton) {
        if redPolkdot.isHidden{
            PLast = PCurrent
            PCurrent = redPolkdot
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            redPolkdot.isHidden = true
        }
    }
    @IBAction func applebottoms(_ sender: UIButton) {
        if appleBottoms.isHidden{
            PLast = PCurrent
            PCurrent = appleBottoms
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            appleBottoms.isHidden = true
        }
    }
    
    @IBAction func biegeshorts(_ sender: UIButton) {
        if biegeShorts.isHidden{
            PLast = PCurrent
            PCurrent = biegeShorts
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            biegeShorts.isHidden = true
        }
    }
    @IBAction func overalls(_ sender: UIButton) {
        if overalls.isHidden{
            PLast = PCurrent
            PCurrent = overalls
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            overalls.isHidden = true
        }
    }
    
    @IBAction func shortshorts(_ sender: UIButton) {
        if shortshorts.isHidden{
            PLast = PCurrent
            PCurrent = shortshorts
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            shortshorts.isHidden = true
        }
    }
    
    @IBAction func snans(_ sender: UIButton) {
        if snans.isHidden{
            PLast = PCurrent
            PCurrent = snans
            PLast.isHidden = true
            PCurrent.isHidden = false
        }else{
            snans.isHidden = true
        }
    }
    
    //shirts
    //
    
    @IBAction func eye(_ sender: UIButton) {
        if threeEye.isHidden{
            shirLast = shirCurrent
            shirCurrent = threeEye
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            threeEye.isHidden = true
        }
    }
    
    @IBAction func redshirt(_ sender: UIButton) {
        if redShirt.isHidden{
            shirLast = shirCurrent
            shirCurrent = redShirt
            shirLast.isHidden = true
            shirCurrent.isHidden = false
        }else{
            redShirt.isHidden = true
        }
    }
    
    @IBAction func floralshirt(_ sender: UIButton) {
        if floral.isHidden{
            shirLast = shirCurrent
            shirCurrent = floral
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            floral.isHidden = true
        }
    }
    @IBAction func killer(_ sender: UIButton) {
        if killerSweater.isHidden{
            shirLast = shirCurrent
            shirCurrent = killerSweater
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            killerSweater.isHidden = true
        }
    }
    @IBAction func canada(_ sender: UIButton) {
        if canadaLove.isHidden{
            shirLast = shirCurrent
            shirCurrent = canadaLove
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            canadaLove.isHidden = true
        }
    }
    @IBAction func sweat(_ sender: UIButton) {
        if sweatyShirt.isHidden{
            shirLast = shirCurrent
            shirCurrent = sweatyShirt
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            sweatyShirt.isHidden = true
        }
    }
    @IBAction func chrisChan(_ sender: UIButton) {
        if chris.isHidden{
            shirLast = shirCurrent
            shirCurrent = chris
            shirLast.isHidden = true
            shirCurrent.isHidden = false
            overalls.isHidden = true
        }else{
            chris.isHidden = true
        }
    }
    
    
    //enviroments
    @IBAction func burnhos(_ sender: UIButton) {
        if burningHouse.isHidden{
            envLast = envCurr
            envCurr = burningHouse
            envLast.isHidden = true
            envCurr.isHidden = false
        }else{
            burningHouse.isHidden = true
        }
    }
    @IBAction func clownstage(_ sender: UIButton) {
        if clownStage.isHidden{
            envLast = envCurr
            envCurr = clownStage
            envLast.isHidden = true
            envCurr.isHidden = false
        }else{
            clownStage.isHidden = true
        }
    }
    @IBAction func chrisRoom(_ sender: UIButton) {
        if chrisRoom.isHidden{
            envLast = envCurr
            envCurr = chrisRoom
            envLast.isHidden = true
            envCurr.isHidden = false
        }else{
            chrisRoom.isHidden = true
        }
    }
    //props
    @IBAction func angy(_ sender: UIButton) {
        if angy.isHidden{
            propL = propC
            propC = angy
            propL.isHidden = true
            propC.isHidden = false
        }else{
            angy.isHidden = true
        }
    }
    @IBAction func Monocle(_ sender: UIButton) {
        if monocle.isHidden{
            propL = propC
            propC = monocle
            propL.isHidden = true
            propC.isHidden = false
        }else{
            monocle.isHidden = true
        }
    }
    @IBAction func ClownNose(_ sender: UIButton) {
        if clownNose.isHidden{
            propL = propC
            propC = clownNose
            propL.isHidden = true
            propC.isHidden = false
        }else{
            clownNose.isHidden = true
        }
    }
    @IBAction func musta(_ sender: UIButton) {
        if mustach.isHidden{
            propL = propC
            propC = mustach
            propL.isHidden = true
            propC.isHidden = false
        }else{
            mustach.isHidden = true
        }
    }
    @IBAction func NOSE(_ sender: UIButton) {
        if nose.isHidden{
            propL = propC
            propC = nose
            propL.isHidden = true
            propC.isHidden = false
        }else{
            nose.isHidden = true
        }
    }
    //extra
    @IBAction func bana(_ sender: UIButton) {
        if bana.isHidden{
            extL = extC
            extC = bana
            extL.isHidden = true
            extC.isHidden = false
        }else{
            bana.isHidden = true
        }
    }
    @IBAction func bomb(_ sender: UIButton) {
        if bomb.isHidden{
            extL = extC
            extC = bomb
            extL.isHidden = true
            extC.isHidden = false
        }else{
            bomb.isHidden = true
        }
    }
    @IBAction func triden(_ sender: UIButton) {
        if devilTrident.isHidden{
            extL = extC
            extC = devilTrident
            extL.isHidden = true
            extC.isHidden = false
        }else{
            devilTrident.isHidden = true
        }
    }
    
}
