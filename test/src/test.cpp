#include "catch.hpp"
#include "johnson_trotter.h"

TEST_CASE("") {
  std::vector<int> expected{1};

  johnson_trotter::Johnson_Trotter jt(1);
  REQUIRE(expected == jt.permutation());
}
