/*

HANGUL TO UNICODESCALARS
MIT LICENSE
CHOI GI MIN

*/

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getUnicodeSclarsString("테스트 입니다");
        
    }
    
    func getUnicodeSclarsString(hanggul: String) -> String
    {
        let chosung: NSArray = [ "ㄱ", "ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ" ];
        let jungsung: NSArray = [ "ㅏ","ㅐ","ㅑ","ㅒ","ㅓ","ㅔ","ㅕ","ㅖ","ㅗ","ㅘ","ㅙ","ㅚ","ㅛ","ㅜ","ㅝ","ㅞ","ㅟ","ㅠ","ㅡ","ㅢ","ㅣ" ];
        let jongsung: NSArray = [ "","ㄱ","ㄲ","ㄳ","ㄴ","ㄵ","ㄶ","ㄷ","ㄹ","ㄺ","ㄻ","ㄼ","ㄽ","ㄾ","ㄿ","ㅀ","ㅁ","ㅂ","ㅄ","ㅅ","ㅆ","ㅇ","ㅈ","ㅊ","ㅋ"," ㅌ","ㅍ","ㅎ" ];
        let textResult = "";
        
        let array = Array(hanggul.characters);
        
        for(var i = 0; i < array.count; i++)
        {
            let str = String(array[i]).unicodeScalars;
            let code = str[str.startIndex].value
            
            if (code >= 44032 && code <= 55203) {
                let uniCode = code - 44032;
                let chosungIndex = Int(uniCode / 21 / 28);
                let jungsungIndex = Int(uniCode % (21 * 28) / 28);
                let jongsungIndex = Int(uniCode % 28);
                
                let chos = String(chosung[chosungIndex]);
                let jungs = String(jungsung[jungsungIndex]);
                let jongs = String(jongsung[jongsungIndex]);
                
                let textResult = String(format: "%@%@%@", chos, jungs, jongs)
                print(textResult);
            }
            
        }
        return textResult;
    }
    
}
