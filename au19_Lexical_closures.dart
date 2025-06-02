void main() {
  var conversorTemperatura = /*temperaturaC*/ (num tcelcius) {
    return /*fahrenheitch */ (num f) {
      return /*num32i*/ (num n32) {
        return (tcelcius * f) + n32;
      };
    };
  };
  var temperaturaC = conversorTemperatura(45); //Closure 1
  var fahrenheitch = temperaturaC(1.8); //Closure 2
  var num32i = fahrenheitch(32); // Closure 3
  print(num32i);
}
