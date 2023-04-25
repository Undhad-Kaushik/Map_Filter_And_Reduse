import UIKit

var greeting = "Hello, playground"


// MARK: - Map
var arrNumbers: [Int] = [3045, 234, 4545, 2322, 54645,3323]
let arrNumberInDouble: [Double] = arrNumbers.map { Double($0) }
print(arrNumberInDouble)

var arrNames: [String] = ["Mehul", "Meet", "Ketan", "Keyur", "Karkar", "Abhi"]
let arrNumberInString: [String] = arrNumbers.map { String($0) }
print(arrNumberInString)


// MARK: - Filter

//var arrHighNumbers: [Int] = arrNumbers.filter { number in
//    return number % 2 == 0
//}
//print(arrHighNumbers)


var arrEvenNumbers: [Int] = arrNumbers.filter { $0 % 2 == 0 }
print(arrEvenNumbers)

var totalOddNumbers: Int = arrNumbers.filter { $0 % 2 != 0 }.reduce(0, +)
print(totalOddNumbers)

var totalll1: Int = arrNumbers.reduce(0, +)
print(totalll1)

var total: Int = arrNumbers.reduce(-100, +)

 
 
 
struct OrderFullDetails {
    var id: Int
    var vendorName: String
    var stetus: OrderStetus
    var total: Double
    var tax: Double
}

enum OrderStetus: String {
    case pending
    case Confirmed
    case delivered
    case canceled
    case rejected
}

struct OrderBasicDetails {
    var id: String
    var total: Double
}


var arrOrders: [OrderFullDetails] = [OrderFullDetails(id: 1, vendorName: "taka ni bhel", stetus: .pending, total: 230.0, tax: 23),
                                     OrderFullDetails(id: 2, vendorName: "Doninoz", stetus: .delivered, total: 900.0, tax: 90),
                                     OrderFullDetails(id: 3, vendorName: "Tulsi hotel", stetus: .canceled, total: 1200.0, tax: 120),
                                     OrderFullDetails(id: 4, vendorName: "Lari ", stetus: .Confirmed, total: 30.0, tax: 3),
                                     OrderFullDetails(id: 5, vendorName: "Jalaram", stetus: .Confirmed, total: 390.0, tax: 39),
                                     OrderFullDetails(id: 6, vendorName: "Aalupuri", stetus: .rejected, total: 150.0, tax: 15)]


print(arrOrders)


let arrOrderTotal: [Double] = arrOrders.map { $0.total }
print(arrOrderTotal)

let arrOrderTotal1 = arrOrders.map { "\($0.total)" }
print(arrOrderTotal1)

let arrOrderTotalAndTax = arrOrders.map { "\($0.tax) + \($0.total)" }
print(arrOrderTotalAndTax)

var arrOrderBasicDetails: [OrderBasicDetails] = arrOrders.map { OrderBasicDetails(id: String($0.id), total: $0.total) }
print(arrOrderBasicDetails)



// MARK: - Map, Dictionary

var arrBasicDetailsDic: [Dictionary<String, Any>] = arrOrders.map { ["id": $0.id, "total": $0.total] }
print(arrBasicDetailsDic)


var arrBasicDetailsDicToArray = arrBasicDetailsDic.map { OrderBasicDetails(id: String($0["id"] as! Int), total: $0["total"] as! Double) }
print(arrBasicDetailsDicToArray)

let arrOrderTotal11: [OrderFullDetails] = arrOrders.filter { $0.total > 300 }
print(arrOrderTotal)



// MARK: - Mep, Filter

let arrHighOrderVendors = arrOrders.filter { $0.total > 300 }.map { $0.vendorName }
print(arrHighOrderVendors)

let arrHighOrdersTotall = arrOrders.filter { $0.total > 300 }.map { $0.total + $0.tax }
print(arrHighOrdersTotall)



// MARK: - Map, Filter And Reduse

let highOrdersTotal = arrOrders.filter { $0.total > 300 }
    .map { $0.total + $0.tax }.reduce(0, +)

