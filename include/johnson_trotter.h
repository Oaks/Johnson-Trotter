#if !defined(JOHNSON_TROTTER_H)
#define JOHNSON_TROTTER_H

#include <vector>

namespace johnson_trotter {

class Johnson_Trotter {
 private:
  const unsigned int _count;

 public:
  Johnson_Trotter(unsigned int count);
  ~Johnson_Trotter();
  std::vector<int> permutation();
};
}

#endif
