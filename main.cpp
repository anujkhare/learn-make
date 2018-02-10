#include <iostream>
using namespace std;

#include "int_math.h"


int main() {
  cout << "Hey there\n";

  IntMath math;
  int a = 30, b = 4;

  cout << math.sum(a, b) << endl;
  cout << math.diff(a, b) << endl;
  cout << math.prod(a, b) << endl;
  cout << math.div(a, b) << endl;

  return 0;
}

