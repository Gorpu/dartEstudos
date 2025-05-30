void main() {
  var conversorTemperatura = /*temperaturaC*/ (num tcelcius) {
    return /*fahrenheitch */ (num f) {
      return /*num32i*/ (num n32) {
        return (tcelcius * f) + n32;
      };
    };
  };
  var temperaturaC = conversorTemperatura(45);
  var fahrenheitch = temperaturaC(1.8);
  var num32i = fahrenheitch(32);
  print(num32i);
}
