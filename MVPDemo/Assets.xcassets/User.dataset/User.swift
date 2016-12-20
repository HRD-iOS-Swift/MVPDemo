//
//  User.swift
//  AlamofireDemo
//
//  Created by Kokpheng on 10/7/16.
//  Copyright © 2016 Kokpheng. All rights reserved.
//

import Foundation

public class User {
    var cell : String
    var dob : String
    var email : String
    var gender : String
    var ssid : [Dictionary<String, String>]
    var location : Location
    var name : [Dictionary<String, String>]
    var nationality : String
    var phone : String
    var picture : Picture
    var registered : String
    init(){
        self.cell = ""
        self.dob = ""
        self.email = ""
        self.gender = ""
        self.ssid =  [Dictionary<String, String>]()
        self.location = Location()
        self.name = [Dictionary<String, String>]()
        self.nationality = ""
        self.phone = ""
        self.picture = Picture()
        self.registered = ""
    }
    
    init(cell : String, dob : String, email : String, gender : String, ssid : [Dictionary<String, String>], location : Location, name : [Dictionary<String, String>], nationality : String, phone : String, picture : Picture, registered : String){
        
        self.cell = cell
        self.dob = dob
        self.email = email
        self.gender = gender
        self.ssid =  ssid
        self.location = location
        self.name = name
        self.nationality = nationality
        self.phone = phone
        self.picture = picture
        self.registered = registered
        
        //print("user.append(User(cell: \"\(self.cell)\", dob: \"\(self.dob)\", email: \"\(self.email)\", gender: \"\(self.gender)\", ssid: [[\"name\":\"\(self.ssid[0]["name"]!)\"],[\"value\":\"\(self.ssid[1]["value"]!)\"]] , location: Location(city: \"\(self.location.city)\", postcode: \"\(self.location.postcode)\", state: \"\(location.state)\", street: \"\(self.location.street)\"), name: [[\"first\":\"\(self.name[0]["first"]!)\"], [\"last\":\"\(self.name[1]["last"]!)\"], [\"title\":\"\(self.name[2]["title"]!)\"]], nationality: \"\(self.nationality)\", phone: \"\(self.phone)\", picture: Picture(large: \"\(self.picture.large)\", medium: \"\(self.picture.medium)\", thumbnail: \"\(self.picture.thumbnail)\"), registered: \"\(self.registered))\"))\n")
    
    }
    
    
    static func getUsers() -> [User]{
        var user = [User]()
        user.append(User(cell: "(10) 5626-2941", dob: "1954-07-26 01:07:40", email: "guadalberto.pinto@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "são carlos", postcode: "87035", state: "rio de janeiro", street: "1905 rua paraná "), name: [["first":"guadalberto"], ["last":"pinto"], ["title":"mr"]], nationality: "BR", phone: "(43) 9230-3656", picture: Picture(large: "https://randomuser.me/api/portraits/men/50.jpg", medium: "https://randomuser.me/api/portraits/med/men/50.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/50.jpg"), registered: "2005-03-02 12:03:48)"))
        
        user.append(User(cell: "042-394-71-86", dob: "1946-06-08 14:42:57", email: "sofia.kantola@example.com", gender: "female", ssid: [["name":"HETU"],["value":"1146-004V"]] , location: Location(city: "kangasniemi", postcode: "98972", state: "central ostrobothnia", street: "3175 fredrikinkatu"), name: [["first":"sofia"], ["last":"kantola"], ["title":"miss"]], nationality: "FI", phone: "08-905-175", picture: Picture(large: "https://randomuser.me/api/portraits/women/15.jpg", medium: "https://randomuser.me/api/portraits/med/women/15.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/15.jpg"), registered: "2003-03-24 13:15:50)"))
        
        user.append(User(cell: "06-62-94-45-06", dob: "1984-02-02 01:06:35", email: "edouard.hubert@example.com", gender: "male", ssid: [["name":"INSEE"],["value":"184116156397 21"]] , location: Location(city: "dunkerque", postcode: "30520", state: "haute-corse", street: "2836 avenue de la république"), name: [["first":"edouard"], ["last":"hubert"], ["title":"mr"]], nationality: "FR", phone: "04-65-91-56-06", picture: Picture(large: "https://randomuser.me/api/portraits/men/42.jpg", medium: "https://randomuser.me/api/portraits/med/men/42.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/42.jpg"), registered: "2015-02-10 22:52:54)"))
        
        user.append(User(cell: "(850)-525-3696", dob: "1971-01-02 02:08:38", email: "jonas.dumont@example.com", gender: "male", ssid: [["name":"AVS"],["value":"756.ILKL.YCSF.11"]] , location: Location(city: "renens vd 1", postcode: "3556", state: "neuchâtel", street: "4569 rue d'abbeville"), name: [["first":"jonas"], ["last":"dumont"], ["title":"monsieur"]], nationality: "CH", phone: "(277)-716-7749", picture: Picture(large: "https://randomuser.me/api/portraits/men/81.jpg", medium: "https://randomuser.me/api/portraits/med/men/81.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/81.jpg"), registered: "2011-11-12 11:59:04)"))
        
        user.append(User(cell: "(526)-144-9404", dob: "1984-05-29 02:53:25", email: "gallyon.munnik@example.com", gender: "female", ssid: [["name":"BSN"],["value":"97135883"]] , location: Location(city: "maasdriel", postcode: "83386", state: "zeeland", street: "3465 wed"), name: [["first":"gallyon"], ["last":"munnik"], ["title":"miss"]], nationality: "NL", phone: "(643)-475-4378", picture: Picture(large: "https://randomuser.me/api/portraits/women/53.jpg", medium: "https://randomuser.me/api/portraits/med/women/53.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/53.jpg"), registered: "2010-09-23 15:52:43)"))
        
        user.append(User(cell: "754-276-7899", dob: "1971-05-04 10:05:38", email: "clara.lévesque@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "port elgin", postcode: "42071", state: "prince edward island", street: "5798 brock rd"), name: [["first":"clara"], ["last":"lévesque"], ["title":"ms"]], nationality: "CA", phone: "610-429-2801", picture: Picture(large: "https://randomuser.me/api/portraits/women/70.jpg", medium: "https://randomuser.me/api/portraits/med/women/70.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/70.jpg"), registered: "2004-10-21 04:44:33)"))
        
        user.append(User(cell: "(034)-664-1361", dob: "1991-07-29 13:53:58", email: "kübra.babacan@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "muş", postcode: "85792", state: "siirt", street: "6856 vatan cd"), name: [["first":"kübra"], ["last":"babacan"], ["title":"mrs"]], nationality: "TR", phone: "(864)-271-2401", picture: Picture(large: "https://randomuser.me/api/portraits/women/49.jpg", medium: "https://randomuser.me/api/portraits/med/women/49.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/49.jpg"), registered: "2009-02-26 02:07:25)"))
        
        user.append(User(cell: "0451-231-799", dob: "1970-02-07 15:47:57", email: "tracy.myers@example.com", gender: "female", ssid: [["name":"TFN"],["value":"755088773"]] , location: Location(city: "warrnambool", postcode: "767", state: "northern territory", street: "3112 poplar dr"), name: [["first":"tracy"], ["last":"myers"], ["title":"ms"]], nationality: "AU", phone: "09-4816-1155", picture: Picture(large: "https://randomuser.me/api/portraits/women/88.jpg", medium: "https://randomuser.me/api/portraits/med/women/88.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/88.jpg"), registered: "2010-04-29 07:33:58)"))
        
        user.append(User(cell: "0422-159-416", dob: "1977-01-07 04:26:12", email: "same.banks@example.com", gender: "male", ssid: [["name":"TFN"],["value":"710932642"]] , location: Location(city: "geelong", postcode: "4263", state: "new south wales", street: "9168 country club rd"), name: [["first":"same"], ["last":"banks"], ["title":"mr"]], nationality: "AU", phone: "03-9283-0978", picture: Picture(large: "https://randomuser.me/api/portraits/men/77.jpg", medium: "https://randomuser.me/api/portraits/med/men/77.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/77.jpg"), registered: "2015-06-18 16:53:46)"))
        
        user.append(User(cell: "(708)-716-0097", dob: "1978-07-15 07:41:44", email: "noemie.guerin@example.com", gender: "female", ssid: [["name":"AVS"],["value":"756.EBJC.LLDV.19"]] , location: Location(city: "lutry", postcode: "1485", state: "basel-stadt", street: "5405 rue de la charité"), name: [["first":"noemie"], ["last":"guerin"], ["title":"mademoiselle"]], nationality: "CH", phone: "(599)-403-9312", picture: Picture(large: "https://randomuser.me/api/portraits/women/3.jpg", medium: "https://randomuser.me/api/portraits/med/women/3.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/3.jpg"), registered: "2004-03-01 02:05:42)"))
        
        user.append(User(cell: "635-074-343", dob: "1990-01-22 22:23:45", email: "jordi.garrido@example.com", gender: "male", ssid: [["name":"DNI"],["value":"21528972-O"]] , location: Location(city: "vigo", postcode: "59377", state: "melilla", street: "7612 calle de alberto aguilera"), name: [["first":"jordi"], ["last":"garrido"], ["title":"mr"]], nationality: "ES", phone: "926-586-284", picture: Picture(large: "https://randomuser.me/api/portraits/men/87.jpg", medium: "https://randomuser.me/api/portraits/med/men/87.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/87.jpg"), registered: "2005-09-07 11:01:36)"))
        
        user.append(User(cell: "0950-166-8583", dob: "1958-10-21 18:29:34", email: "رادین.کوتی@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "بوشهر", postcode: "99763", state: "گیلان", street: "4497 سبلان جنوبی"), name: [["first":"رادین"], ["last":"کوتی"], ["title":"mr"]], nationality: "IR", phone: "030-72441101", picture: Picture(large: "https://randomuser.me/api/portraits/men/63.jpg", medium: "https://randomuser.me/api/portraits/med/men/63.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/63.jpg"), registered: "2013-07-07 18:18:39)"))
        
        user.append(User(cell: "0171-9886826", dob: "1960-01-08 03:06:14", email: "nikolas.schumann@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "weißenburg-gunzenhausen", postcode: "83641", state: "sachsen-anhalt", street: "5724 wiesenstraße"), name: [["first":"nikolas"], ["last":"schumann"], ["title":"mr"]], nationality: "DE", phone: "0010-9142720", picture: Picture(large: "https://randomuser.me/api/portraits/men/64.jpg", medium: "https://randomuser.me/api/portraits/med/men/64.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/64.jpg"), registered: "2013-07-09 16:34:47)"))
        
        user.append(User(cell: "(682)-833-0400", dob: "1946-03-01 03:13:05", email: "lucien.thomas@example.com", gender: "male", ssid: [["name":"AVS"],["value":"756.IFNK.QHOK.67"]] , location: Location(city: "prilly", postcode: "3765", state: "zug", street: "8296 avenue debourg"), name: [["first":"lucien"], ["last":"thomas"], ["title":"monsieur"]], nationality: "CH", phone: "(650)-172-0888", picture: Picture(large: "https://randomuser.me/api/portraits/men/88.jpg", medium: "https://randomuser.me/api/portraits/med/men/88.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/88.jpg"), registered: "2003-02-03 00:26:58)"))
        
        user.append(User(cell: "653-705-870", dob: "1961-12-16 21:24:29", email: "consuelo.ramos@example.com", gender: "female", ssid: [["name":"DNI"],["value":"04721347-M"]] , location: Location(city: "pontevedra", postcode: "20230", state: "melilla", street: "7934 calle de alberto aguilera"), name: [["first":"consuelo"], ["last":"ramos"], ["title":"miss"]], nationality: "ES", phone: "991-066-612", picture: Picture(large: "https://randomuser.me/api/portraits/women/75.jpg", medium: "https://randomuser.me/api/portraits/med/women/75.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/75.jpg"), registered: "2016-05-16 10:04:05)"))
        
        user.append(User(cell: "(528)-600-8387", dob: "1968-11-17 01:00:51", email: "lenno.rip@example.com", gender: "male", ssid: [["name":"BSN"],["value":"33259074"]] , location: Location(city: "stichtse vecht", postcode: "81660", state: "zuid-holland", street: "5715 sterrenburg"), name: [["first":"lenno"], ["last":"rip"], ["title":"mr"]], nationality: "NL", phone: "(445)-168-8205", picture: Picture(large: "https://randomuser.me/api/portraits/men/22.jpg", medium: "https://randomuser.me/api/portraits/med/men/22.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/22.jpg"), registered: "2006-09-22 08:18:20)"))
        
        user.append(User(cell: "645-756-651", dob: "1993-01-30 09:03:14", email: "antonia.gallardo@example.com", gender: "female", ssid: [["name":"DNI"],["value":"26985812-P"]] , location: Location(city: "san sebastián", postcode: "28973", state: "extremadura", street: "6795 calle de la luna"), name: [["first":"antonia"], ["last":"gallardo"], ["title":"miss"]], nationality: "ES", phone: "915-303-980", picture: Picture(large: "https://randomuser.me/api/portraits/women/28.jpg", medium: "https://randomuser.me/api/portraits/med/women/28.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/28.jpg"), registered: "2006-05-04 07:52:53)"))
        
        user.append(User(cell: "0407-592-460", dob: "1965-12-08 01:00:16", email: "louella.barnett@example.com", gender: "female", ssid: [["name":"TFN"],["value":"033041728"]] , location: Location(city: "mackay", postcode: "5212", state: "northern territory", street: "1447 eason rd"), name: [["first":"louella"], ["last":"barnett"], ["title":"mrs"]], nationality: "AU", phone: "00-1665-0363", picture: Picture(large: "https://randomuser.me/api/portraits/women/38.jpg", medium: "https://randomuser.me/api/portraits/med/women/38.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/38.jpg"), registered: "2002-11-20 09:23:32)"))
        
        user.append(User(cell: "(809)-732-8848", dob: "1992-06-05 04:25:31", email: "latife.alnıaçık@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "konya", postcode: "77120", state: "muş", street: "4875 şehitler cd"), name: [["first":"latife"], ["last":"alnıaçık"], ["title":"mrs"]], nationality: "TR", phone: "(610)-849-4028", picture: Picture(large: "https://randomuser.me/api/portraits/women/44.jpg", medium: "https://randomuser.me/api/portraits/med/women/44.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/44.jpg"), registered: "2007-04-07 03:32:07)"))
        
        user.append(User(cell: "(079)-290-4773", dob: "1951-05-28 17:31:58", email: "sudenaz.dursun@example.com", gender: "female", ssid: [["name":"BSN"],["value":"43533428"]] , location: Location(city: "zandvoort", postcode: "89079", state: "zuid-holland", street: "9272 berekuil"), name: [["first":"sudenaz"], ["last":"dursun"], ["title":"mrs"]], nationality: "NL", phone: "(782)-804-0575", picture: Picture(large: "https://randomuser.me/api/portraits/women/77.jpg", medium: "https://randomuser.me/api/portraits/med/women/77.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/77.jpg"), registered: "2015-07-29 05:33:59)"))
        
        user.append(User(cell: "(183)-932-9677", dob: "1981-06-28 08:44:25", email: "mihriban.wassenberg@example.com", gender: "female", ssid: [["name":"BSN"],["value":"47033410"]] , location: Location(city: "vaals", postcode: "61867", state: "gelderland", street: "2079 zonstraat"), name: [["first":"mihriban"], ["last":"wassenberg"], ["title":"mrs"]], nationality: "NL", phone: "(759)-140-1957", picture: Picture(large: "https://randomuser.me/api/portraits/women/92.jpg", medium: "https://randomuser.me/api/portraits/med/women/92.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/92.jpg"), registered: "2010-07-12 19:56:07)"))
        
        user.append(User(cell: "081-935-9812", dob: "1981-10-23 08:15:22", email: "heather.wood@example.com", gender: "female", ssid: [["name":"PPS"],["value":"2333923T"]] , location: Location(city: "fermoy", postcode: "78195", state: "clare", street: "5262 tara street"), name: [["first":"heather"], ["last":"wood"], ["title":"miss"]], nationality: "IE", phone: "011-097-1124", picture: Picture(large: "https://randomuser.me/api/portraits/women/25.jpg", medium: "https://randomuser.me/api/portraits/med/women/25.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/25.jpg"), registered: "2007-01-29 09:20:12)"))
        
        user.append(User(cell: "0174-2413754", dob: "1946-02-19 13:13:41", email: "luka.baum@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "wittmund", postcode: "15893", state: "saarland", street: "1671 gartenstraße"), name: [["first":"luka"], ["last":"baum"], ["title":"mr"]], nationality: "DE", phone: "0843-7814433", picture: Picture(large: "https://randomuser.me/api/portraits/men/79.jpg", medium: "https://randomuser.me/api/portraits/med/men/79.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/79.jpg"), registered: "2005-04-07 01:23:16)"))
        
        user.append(User(cell: "202-239-9384", dob: "1961-04-01 03:20:16", email: "carter.abraham@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "maitland", postcode: "55481", state: "british columbia", street: "1765 15th st"), name: [["first":"carter"], ["last":"abraham"], ["title":"mr"]], nationality: "CA", phone: "738-681-2146", picture: Picture(large: "https://randomuser.me/api/portraits/men/58.jpg", medium: "https://randomuser.me/api/portraits/med/men/58.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/58.jpg"), registered: "2003-07-21 04:16:14)"))
        
        user.append(User(cell: "(26) 8393-3769", dob: "1950-01-05 17:57:18", email: "feliciano.porto@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "santana de parnaíba", postcode: "17442", state: "alagoas", street: "9910 rua da paz "), name: [["first":"feliciano"], ["last":"porto"], ["title":"mr"]], nationality: "BR", phone: "(07) 1805-3164", picture: Picture(large: "https://randomuser.me/api/portraits/men/56.jpg", medium: "https://randomuser.me/api/portraits/med/men/56.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/56.jpg"), registered: "2016-04-23 06:54:34)"))
        
        user.append(User(cell: "608-540-213", dob: "1956-08-01 01:40:02", email: "ismael.cano@example.com", gender: "male", ssid: [["name":"DNI"],["value":"76259763-V"]] , location: Location(city: "parla", postcode: "26221", state: "castilla y león", street: "5556 calle covadonga"), name: [["first":"ismael"], ["last":"cano"], ["title":"mr"]], nationality: "ES", phone: "984-966-236", picture: Picture(large: "https://randomuser.me/api/portraits/men/80.jpg", medium: "https://randomuser.me/api/portraits/med/men/80.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/80.jpg"), registered: "2015-04-29 14:21:39)"))
        
        user.append(User(cell: "(197)-664-9497", dob: "1944-10-13 18:07:04", email: "koray.beşok@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "gaziantep", postcode: "36261", state: "mardin", street: "1651 şehitler cd"), name: [["first":"koray"], ["last":"beşok"], ["title":"mr"]], nationality: "TR", phone: "(474)-988-3843", picture: Picture(large: "https://randomuser.me/api/portraits/men/31.jpg", medium: "https://randomuser.me/api/portraits/med/men/31.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/31.jpg"), registered: "2013-09-28 06:21:23)"))
        
        user.append(User(cell: "552-981-9827", dob: "1948-04-20 05:21:59", email: "amy.singh@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "clinton", postcode: "58656", state: "nova scotia", street: "7939 west ave"), name: [["first":"amy"], ["last":"singh"], ["title":"miss"]], nationality: "CA", phone: "500-659-2443", picture: Picture(large: "https://randomuser.me/api/portraits/women/85.jpg", medium: "https://randomuser.me/api/portraits/med/women/85.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/85.jpg"), registered: "2003-02-06 06:02:14)"))
        
        user.append(User(cell: "602-842-728", dob: "1948-08-19 20:40:02", email: "inmaculada.marin@example.com", gender: "female", ssid: [["name":"DNI"],["value":"96073785-B"]] , location: Location(city: "cartagena", postcode: "29523", state: "cataluña", street: "1006 avenida de salamanca"), name: [["first":"inmaculada"], ["last":"marin"], ["title":"mrs"]], nationality: "ES", phone: "989-338-834", picture: Picture(large: "https://randomuser.me/api/portraits/women/81.jpg", medium: "https://randomuser.me/api/portraits/med/women/81.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/81.jpg"), registered: "2007-10-02 07:59:44)"))
        
        user.append(User(cell: "(682)-056-1252", dob: "1958-05-12 18:43:02", email: "kübra.koç@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "ordu", postcode: "40310", state: "kahramanmaraş", street: "5088 tunalı hilmi cd"), name: [["first":"kübra"], ["last":"koç"], ["title":"miss"]], nationality: "TR", phone: "(897)-494-0095", picture: Picture(large: "https://randomuser.me/api/portraits/women/76.jpg", medium: "https://randomuser.me/api/portraits/med/women/76.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/76.jpg"), registered: "2015-09-11 23:04:08)"))
        
        user.append(User(cell: "76041903", dob: "1977-11-27 15:35:58", email: "katrine.kristensen@example.com", gender: "female", ssid: [["name":"CPR"],["value":"501973-6591"]] , location: Location(city: "billum", postcode: "91033", state: "hovedstaden", street: "5210 agervej"), name: [["first":"katrine"], ["last":"kristensen"], ["title":"mrs"]], nationality: "DK", phone: "45704604", picture: Picture(large: "https://randomuser.me/api/portraits/women/43.jpg", medium: "https://randomuser.me/api/portraits/med/women/43.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/43.jpg"), registered: "2002-05-02 07:51:50)"))
        
        user.append(User(cell: "(58) 4018-7005", dob: "1980-06-03 22:11:20", email: "joelci.ferreira@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "maricá", postcode: "77272", state: "pará", street: "7991 rua bela vista "), name: [["first":"joelci"], ["last":"ferreira"], ["title":"mrs"]], nationality: "BR", phone: "(58) 4976-3018", picture: Picture(large: "https://randomuser.me/api/portraits/women/61.jpg", medium: "https://randomuser.me/api/portraits/med/women/61.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/61.jpg"), registered: "2015-01-04 01:10:53)"))
        
        user.append(User(cell: "0174-3771097", dob: "1961-08-09 07:44:39", email: "stefan.arnold@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "suhl", postcode: "27021", state: "rheinland-pfalz", street: "5230 bachstraße"), name: [["first":"stefan"], ["last":"arnold"], ["title":"mr"]], nationality: "DE", phone: "0999-8603563", picture: Picture(large: "https://randomuser.me/api/portraits/men/69.jpg", medium: "https://randomuser.me/api/portraits/med/men/69.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/69.jpg"), registered: "2010-10-19 23:30:34)"))
        
        user.append(User(cell: "(294)-890-6962", dob: "1959-12-13 02:15:48", email: "irene.morales@example.com", gender: "female", ssid: [["name":"SSN"],["value":"517-12-6600"]] , location: Location(city: "springfield", postcode: "25956", state: "maine", street: "9269 lakeshore rd"), name: [["first":"irene"], ["last":"morales"], ["title":"ms"]], nationality: "US", phone: "(836)-524-9705", picture: Picture(large: "https://randomuser.me/api/portraits/women/35.jpg", medium: "https://randomuser.me/api/portraits/med/women/35.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/35.jpg"), registered: "2006-10-17 21:01:29)"))
        
        user.append(User(cell: "0171-6072112", dob: "1979-10-26 09:45:05", email: "valeria.mohr@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "deggendorf", postcode: "49361", state: "bremen", street: "1605 wiesenweg"), name: [["first":"valeria"], ["last":"mohr"], ["title":"mrs"]], nationality: "DE", phone: "0582-7466979", picture: Picture(large: "https://randomuser.me/api/portraits/women/61.jpg", medium: "https://randomuser.me/api/portraits/med/women/61.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/61.jpg"), registered: "2004-03-17 01:19:25)"))
        
        user.append(User(cell: "(298)-555-3129", dob: "1995-07-30 05:00:02", email: "victor.wright@example.com", gender: "male", ssid: [["name":"SSN"],["value":"524-84-1093"]] , location: Location(city: "shreveport", postcode: "25445", state: "mississippi", street: "3154 adams st"), name: [["first":"victor"], ["last":"wright"], ["title":"mr"]], nationality: "US", phone: "(804)-516-9716", picture: Picture(large: "https://randomuser.me/api/portraits/men/89.jpg", medium: "https://randomuser.me/api/portraits/med/men/89.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/89.jpg"), registered: "2012-07-09 09:08:16)"))
        
        user.append(User(cell: "(046)-312-8252", dob: "1993-09-22 08:22:40", email: "aaron.cruz@example.com", gender: "male", ssid: [["name":"SSN"],["value":"464-06-2496"]] , location: Location(city: "oxnard", postcode: "27247", state: "ohio", street: "9393 miller ave"), name: [["first":"aaron"], ["last":"cruz"], ["title":"mr"]], nationality: "US", phone: "(200)-277-7650", picture: Picture(large: "https://randomuser.me/api/portraits/men/27.jpg", medium: "https://randomuser.me/api/portraits/med/men/27.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/27.jpg"), registered: "2002-10-30 22:00:32)"))
        
        user.append(User(cell: "(769)-207-2508", dob: "1982-07-18 05:04:34", email: "beatrice.moore@example.com", gender: "female", ssid: [["name":"SSN"],["value":"637-69-3821"]] , location: Location(city: "miami gardens", postcode: "95474", state: "pennsylvania", street: "7499 lakeview st"), name: [["first":"beatrice"], ["last":"moore"], ["title":"ms"]], nationality: "US", phone: "(424)-217-6107", picture: Picture(large: "https://randomuser.me/api/portraits/women/40.jpg", medium: "https://randomuser.me/api/portraits/med/women/40.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/40.jpg"), registered: "2015-04-29 12:51:43)"))
        
        user.append(User(cell: "0996-770-1591", dob: "1947-10-01 01:46:41", email: "بهاره.محمدخان@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "قدس", postcode: "29755", state: "مرکزی", street: "1938 میدان شمشیری"), name: [["first":"بهاره"], ["last":"محمدخان"], ["title":"ms"]], nationality: "IR", phone: "039-28977974", picture: Picture(large: "https://randomuser.me/api/portraits/women/66.jpg", medium: "https://randomuser.me/api/portraits/med/women/66.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/66.jpg"), registered: "2016-07-10 03:35:41)"))
        
        user.append(User(cell: "509-519-2068", dob: "1980-08-18 21:08:41", email: "leanne.clark@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "elgin", postcode: "11620", state: "new brunswick", street: "9593 22nd ave"), name: [["first":"leanne"], ["last":"clark"], ["title":"ms"]], nationality: "CA", phone: "914-168-1202", picture: Picture(large: "https://randomuser.me/api/portraits/women/46.jpg", medium: "https://randomuser.me/api/portraits/med/women/46.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/46.jpg"), registered: "2014-02-16 10:13:47)"))
        
        user.append(User(cell: "(063)-745-2502", dob: "1993-06-18 02:44:30", email: "lincoln.davies@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "hamilton", postcode: "47152", state: "west coast", street: "3627 rattray street"), name: [["first":"lincoln"], ["last":"davies"], ["title":"mr"]], nationality: "NZ", phone: "(053)-595-1668", picture: Picture(large: "https://randomuser.me/api/portraits/men/8.jpg", medium: "https://randomuser.me/api/portraits/med/men/8.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/8.jpg"), registered: "2015-03-05 19:16:51)"))
        
        user.append(User(cell: "(581)-618-3888", dob: "1952-07-15 20:19:42", email: "mehmet.dağdaş@example.com", gender: "male", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "kars", postcode: "30257", state: "karabük", street: "6826 kushimoto sk"), name: [["first":"mehmet"], ["last":"dağdaş"], ["title":"mr"]], nationality: "TR", phone: "(612)-594-9858", picture: Picture(large: "https://randomuser.me/api/portraits/men/14.jpg", medium: "https://randomuser.me/api/portraits/med/men/14.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/14.jpg"), registered: "2005-11-08 05:25:43)"))
        
        user.append(User(cell: "081-222-3314", dob: "1977-06-17 16:12:04", email: "sheryl.butler@example.com", gender: "female", ssid: [["name":"PPS"],["value":"0808715T"]] , location: Location(city: "ardee", postcode: "71893", state: "wexford", street: "5208 church road"), name: [["first":"sheryl"], ["last":"butler"], ["title":"ms"]], nationality: "IE", phone: "041-000-2426", picture: Picture(large: "https://randomuser.me/api/portraits/women/5.jpg", medium: "https://randomuser.me/api/portraits/med/women/5.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/5.jpg"), registered: "2009-05-04 22:28:59)"))
        
        user.append(User(cell: "06-88-81-13-01", dob: "1973-03-21 03:12:04", email: "sarah.michel@example.com", gender: "female", ssid: [["name":"INSEE"],["value":"273226576993 92"]] , location: Location(city: "champigny-sur-marne", postcode: "39846", state: "meuse", street: "7033 rue duguesclin"), name: [["first":"sarah"], ["last":"michel"], ["title":"mrs"]], nationality: "FR", phone: "01-35-25-72-47", picture: Picture(large: "https://randomuser.me/api/portraits/women/95.jpg", medium: "https://randomuser.me/api/portraits/med/women/95.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/95.jpg"), registered: "2003-01-02 11:11:55)"))
        
        user.append(User(cell: "0178-5146886", dob: "1948-01-12 20:05:09", email: "rebekka.sander@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "döbeln", postcode: "39074", state: "niedersachsen", street: "5412 grüner weg"), name: [["first":"rebekka"], ["last":"sander"], ["title":"miss"]], nationality: "DE", phone: "0514-4019380", picture: Picture(large: "https://randomuser.me/api/portraits/women/20.jpg", medium: "https://randomuser.me/api/portraits/med/women/20.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/20.jpg"), registered: "2008-08-15 14:23:06)"))
        
        user.append(User(cell: "(52) 4344-1785", dob: "1958-06-25 15:34:48", email: "adriza.moura@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "colatina", postcode: "88498", state: "rio grande do sul", street: "7328 avenida da legalidade"), name: [["first":"adriza"], ["last":"moura"], ["title":"ms"]], nationality: "BR", phone: "(65) 4420-8242", picture: Picture(large: "https://randomuser.me/api/portraits/women/21.jpg", medium: "https://randomuser.me/api/portraits/med/women/21.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/21.jpg"), registered: "2002-07-21 02:58:40)"))
        
        user.append(User(cell: "0787-540-843", dob: "1989-07-07 14:06:48", email: "abigail.craig@example.com", gender: "female", ssid: [["name":"NINO"],["value":"GT 58 99 53 Z"]] , location: Location(city: "nottingham", postcode: "IS9 8BB", state: "county armagh", street: "8900 king street"), name: [["first":"abigail"], ["last":"craig"], ["title":"mrs"]], nationality: "GB", phone: "016973 65730", picture: Picture(large: "https://randomuser.me/api/portraits/women/27.jpg", medium: "https://randomuser.me/api/portraits/med/women/27.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/27.jpg"), registered: "2012-09-26 10:46:36)"))
        
        user.append(User(cell: "06-15-45-72-73", dob: "1987-06-09 05:08:27", email: "sarah.muller@example.com", gender: "female", ssid: [["name":"INSEE"],["value":"287545647289 94"]] , location: Location(city: "rennes", postcode: "36273", state: "isère", street: "3581 rue de l'abbé-de-l'épée"), name: [["first":"sarah"], ["last":"muller"], ["title":"miss"]], nationality: "FR", phone: "03-14-33-72-05", picture: Picture(large: "https://randomuser.me/api/portraits/women/13.jpg", medium: "https://randomuser.me/api/portraits/med/women/13.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/13.jpg"), registered: "2003-05-27 19:52:23)"))
        
        user.append(User(cell: "16893249", dob: "1983-09-04 20:00:28", email: "isabella.christensen@example.com", gender: "female", ssid: [["name":"CPR"],["value":"306028-9798"]] , location: Location(city: "hirtsals", postcode: "15599", state: "sjælland", street: "2655 skoleparken"), name: [["first":"isabella"], ["last":"christensen"], ["title":"ms"]], nationality: "DK", phone: "08180015", picture: Picture(large: "https://randomuser.me/api/portraits/women/68.jpg", medium: "https://randomuser.me/api/portraits/med/women/68.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/68.jpg"), registered: "2015-11-27 10:20:05)"))
        
        user.append(User(cell: "(78) 0174-2811", dob: "1949-02-27 08:08:14", email: "edineusa.melo@example.com", gender: "female", ssid: [["name":""],["value":"<null>"]] , location: Location(city: "pindamonhangaba", postcode: "28252", state: "roraima", street: "3927 rua quatro"), name: [["first":"edineusa"], ["last":"melo"], ["title":"ms"]], nationality: "BR", phone: "(78) 3677-4088", picture: Picture(large: "https://randomuser.me/api/portraits/women/65.jpg", medium: "https://randomuser.me/api/portraits/med/women/65.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/women/65.jpg"), registered: "2002-12-09 17:02:24)"))
        return user
    }

}

class Location {
    var city : String
    var postcode : String
    var state : String
    var street : String
    
    init(){
        self.city = ""
        self.postcode = ""
        self.state = ""
        self.street = ""
    }
    
    init(city: String, postcode: String, state: String, street: String){
        self.city = city
        self.postcode = postcode
        self.state = state
        self.street = street
    }
}

class Picture{
    var large : String
    var medium : String
    var thumbnail : String
    
    init(){
        self.large = ""
        self.medium = ""
        self.thumbnail = ""
    }
    
    init(large: String, medium: String, thumbnail: String){
        self.large = large
        self.medium = medium
        self.thumbnail = thumbnail
    }
}
