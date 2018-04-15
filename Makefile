
SFML_PATH=${SFML_DIR}
    # SFML_DIR is read from the environment
    # and refers to the installation path of SFML

INCLUDE_PATH=$(SFML_PATH)/include
LIBRARY_PATH=$(SFML_PATH)/lib
LIBRARIES=-lsfml-system -lsfml-window -lsfml-graphics

all: out/main.out

H_FILES=Cellular\ War/Board.h Cellular\ War/HSVColor.h \
Cellular\ War/Matrix.h Cellular\ War/Warrior.h

CPP_FILES=Cellular\ War/Board.cpp Cellular\ War/HSVColor.cpp \
Cellular\ War/Matrix.cpp Cellular\ War/main.cpp

out/main.out: $(H_FILES) $(CPP_FILES)
	g++ -std=c++17 -o out/main.out $(CPP_FILES) \
	-I$(INCLUDE_PATH) \
	-L$(LIBRARY_PATH) $(LIBRARIES)

