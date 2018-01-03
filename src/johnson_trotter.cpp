#include "johnson_trotter.h"

namespace johnson_trotter {

Johnson_Trotter::Johnson_Trotter(unsigned int count) : _count(count) {}
Johnson_Trotter::~Johnson_Trotter() {}

std::vector<int> Johnson_Trotter::permutation() {
  std::vector<int> v{1};
  return v;
}
}
