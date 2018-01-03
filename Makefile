SRC_DIR = src
OBJ_DIR = obj
SRC = $(wildcard $(SRC_DIR)/*.cpp)
OBJ = $(SRC:$(SRC_DIR)/%.cpp=$(OBJ_DIR)/%.o)
INCLUDES = -Iinclude

TEST_SRC_DIR = test/src
TEST_OBJ_DIR = test/obj
TEST_INCLUDES = -Itest/include -Iinclude
TEST_SRC = $(wildcard $(TEST_SRC_DIR)/*.cpp)
TEST_OBJ = $(TEST_SRC:$(TEST_SRC_DIR)/%.cpp=$(TEST_OBJ_DIR)/%.o)
TEST_OBJ += $(OBJ)
TEST_EXEC = test.bin

CXX = g++
CXXFLAGS = -Wall -std=c++11

.PHONY: test

test: $(TEST_EXEC)

$(TEST_EXEC) : $(TEST_OBJ)
	$(CXX) $^ -o $@ &&  ./$(TEST_EXEC)

$(TEST_OBJ_DIR)/%.o : $(TEST_SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(TEST_INCLUDES) -c $< -o $@

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@


