DIR				= ./bin/
BIN				= video-microwrave

HEADERS		:= include/oscpack/ip/*.h \
						 include/oscpack/osc/*.h \
						 include/ABElectronics_CPP/ADCPi/*.h

SOURCES		:= src/*.cpp \
					   include/oscpack/ip/posix/*.cpp \
					   include/oscpack/osc/*.cpp \
					   include/ABElectronics_CPP/ADCPi/*.cpp

INCLUDES	:= -I ./include/

OBJECTS		:= $(SOURCES: .cpp = .o)



CXX				= g++ -g

ENDIANESS=OSC_DETECT_ENDIANESS #source code will detect using preprocessor
 
CXXFLAGS	:= $(INCLUDES) \
						-W -Wall -Wextra \
						-Wno-deprrecated-declarations \
						-D$(ENDIANESS)


GREEN			:= \033[1;32m
WHITE			:= \033[0;m

.PHONY: all clean install

all: build

build:		$(OBJECTS) $(HEADERS)
					@echo "ENDIANESS" $(ENDIANESS)
					@$(CXX) $(OBJECTS) -o $(DIR)$(BIN) $(LDFLAGS)
					@printf "\n[$(GREEN)OK$(WHITE)] Binary: $(DIR)$(BIN)\n"
					@echo "-----------------\n"

%.o:			%.cpp
					@$(CXX) $(CXXFLAGS) -c $< -o $@ 
					@printf "[$(GREEN)OK$(WHITE)] $<\n"

clean:
					@rm -rvf $(DIR)$(BIN) src/*.o src/**/*.o include/**/*.o

install:
					@cp $(DIR)$(BIN) /usr/local/bin

