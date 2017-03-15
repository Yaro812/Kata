/*
 You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.
 
 Example:
 
 longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
 
 n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
 */

import UIKit

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    guard !strarr.isEmpty && k > 0 && k <= strarr.count else { return "" }
    
    var string = strarr[0]
    for idx in k...strarr.count {
        let candidate = strarr[idx-k..<idx].joined()
        if candidate.characters.count > string.characters.count {
            string = candidate
        }
    }
    return string
}




 longestConsec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)
 longestConsec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
 longestConsec([], 1)
 longestConsec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 0)