//文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．

// var s = "パタトクカシーー"
var s = "パタトクカシーー"
var splitString = s.split("");
console.log(splitString);
console.log(splitString.reverse());
console.log(splitString.reverse().join(""));

