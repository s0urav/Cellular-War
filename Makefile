
SFML_PATH=${SFML_DIR}
    # SFML_DIR is read from the environment
    # and refers to the installation path of SFML

CC=g++ -std=c++17

INCLUDE_PATH=$(SFML_PATH)/include
LIBRARY_PATH=$(SFML_PATH)/lib
SRC_DIR=Cellular\ War
LIBRARIES=-lsfml-system -lsfml-window -lsfml-graphics

H_FILES=$(SRC_DIR)/Board.h $(SRC_DIR)/HSVColor.h \
$(SRC_DIR)/Matrix.h $(SRC_DIR)/Warrior.h

CPP_FILES=$(SRC_DIR)/Board.cpp $(SRC_DIR)/HSVColor.cpp \
$(SRC_DIR)/Matrix.cpp $(SRC_DIR)/main.cpp

O_FILES=out/Board.o out/HSVColor.o out/Matrix.o

all: out/main.out

out/main.out: $(SRC_DIR)/main.cpp $(O_FILES)
	$(CC) -o out/main.out $(SRC_DIR)/main.cpp $(O_FILES)  \
	-I$(INCLUDE_PATH) \
	-L$(LIBRARY_PATH) $(LIBRARIES)

# Board.cpp includes Board.h
$(SRC_DIR)/Board.cpp: $(SRC_DIR)/Board.h
	touch $(SRC_DIR)/Board.cpp

# Board.h includes HSVColor.h and Matrix.h
$(SRC_DIR)/Board.h: $(SRC_DIR)/HSVColor.h $(SRC_DIR)/Matrix.h
	touch $(SRC_DIR)/Board.h

out/Board.o: $(SRC_DIR)/Board.cpp
	$(CC) -o out/Board.o -c $(SRC_DIR)/Board.cpp -I$(INCLUDE_PATH)

# HSVColor.cpp includes HSVColor.h
$(SRC_DIR)/HSVColor.cpp: $(SRC_DIR)/HSVColor.h
	touch $(SRC_DIR)/HSVColor.cpp

out/HSVColor.o: $(SRC_DIR)/HSVColor.cpp
	$(CC) -o out/HSVColor.o -c $(SRC_DIR)/HSVColor.cpp -I$(INCLUDE_PATH)

# Matrix.cpp includes Matrix.h
$(SRC_DIR)/Matrix.cpp: $(SRC_DIR)/Matrix.h
	touch $(SRC_DIR)/Matrix.cpp

# Matrix.h includes Warrior.h
$(SRC_DIR)/Matrix.h: $(SRC_DIR)/Warrior.h
	touch $(SRC_DIR)/Matrix.h

out/Matrix.o: $(SRC_DIR)/Matrix.cpp
	$(CC) -o out/Matrix.o -c $(SRC_DIR)/Matrix.cpp -I$(INCLUDE_PATH) \

