//
//  QuestionBank.swift
//  SCF
//
//  Created by ICT on 16/11/2561 BE.
//  Copyright © 2561 Phanuphong Lengjaroen. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question] ()
    
    init() {
        list.append(Question (text: "สารอาหารที่ให้พลังงาน 4 กิโลแคลอรี คือสารอาหารประเภทใด", correctAnswer: 1, correctA: "โปรตีนและคาร์โบไฮเดรต", correctB: "โปรตีนและไขมัน", correctC: "คา์ร์โบไฮเดรตและไขมัน"))
        
        list.append(Question (text: "หน่วยย่อยที่เล็กที่สุดของโปรตีน คืออะไร", correctAnswer: 3, correctA: "ทริปซิน", correctB: "กาแลกโทส", correctC: "กรดอะมิโน"))
        
        list.append(Question (text: "หน่วยย่อยที่เล็กที่สุดของคาร์โบไฮเดรต คืออะไร", correctAnswer: 1, correctA: "กลูโคส", correctB: "กาแลกโทส", correctC: "ซูโครส"))
        
        list.append(Question (text: "สารละลายไอโอดีน ใช้ทดสอบสารอาหารประเภทอะไร", correctAnswer: 1, correctA: "แป้ง", correctB: "วิตามิน", correctC: "โปรตีน"))
        
        list.append(Question (text: "ข้อใดจัดเป็นอาหารที่มีคุณค่าน้อย", correctAnswer: 2, correctA: "ข้าวสุก", correctB: "น้ำอัดลม", correctC: "หมูทอด"))
        
        list.append(Question (text: "การเลือกซื้ออาหารต่างๆ ควรพิจารณาสิ่งใดเป็นสำคัญ", correctAnswer: 1, correctA: "คุณภาพ", correctB: "ราคา", correctC: "ความนิยม"))
        
        list.append(Question (text: "เหตุใดจึงควรเลือกซื้ออาหารตามฤดูกาล", correctAnswer: 1, correctA: "ราคาถูก", correctB: "คนนิยม", correctC: "รสชาติดี"))
        
        list.append(Question (text: "สิ่งใดสำคัญที่สุดในการประกอบอาหาร", correctAnswer: 1, correctA: "ความสะอาด", correctB: "ความประหยัด", correctC: "ความสวยงาม"))
        
        list.append(Question (text: "การถนอมอาหารวิธีใด ที่ทำง่ายและสิ้นเปลืองน้อยที่สุด", correctAnswer: 1, correctA: "การตากแห้ง", correctB: "การกวน", correctC: "การเชื่อม"))
        
        list.append(Question (text: "การปรุงอาหารวิธีใด ที่ต้องทำให้อาหารสุกจนเกือบเปื่อย", correctAnswer: 1, correctA: "การตุ๋น", correctB: "การผัด", correctC: "การต้ม"))
    }
}
