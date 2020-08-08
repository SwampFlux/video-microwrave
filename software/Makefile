DIR				= bin
APP				:= $(DIR)/video-microwrave

HEADERS		:= include/ABElectronics_CPP/ADCPi/*.h \
					include/oscpack/ip/*.h \
					include/oscpack/osc/*.h \

SOURCES		:= src/*.cpp \
				  include/ABElectronics_CPP/ADCPi/*.cpp \
					include/oscpack/ip/*.cpp \
				  include/oscpack/osc/*.cpp \
					include/oscpack/ip/posix/*.cpp \

INCLUDES	:= \
					-I ./ABElectronics_CPP/ADCPi/ \
					-I ./include/oscpack/ \
					-I ./src/

OBJECTS		:= $(SOURCES:.cpp=.o) \
#					include/oscpack/ip/*.o


LDFLAGS		:= -L ./include/oscpack/oscpack/lib -l oscpack

CXX				= g++ -g

ENDIANESS=OSC_DETECT_ENDIANESS #source code will detect using preprocessor
 
CXXFLAGS	:= $(INCLUDES) \
						-W -Wall -Wextra \
						-Wno-deprrecated-declarations \
						-D$(ENDIANESS) \
						-DPLATFORM_RPI \
						-Wno-psabi


GREEN			:= \033[1;32m
WHITE			:= \033[0;m

.PHONY: all clean install uninstall

all: $(APP)

$(DIR):
					mkdir $@

$(LIBFILENAME): $(LIBOBJECTS)
	#GNU/Linux case
	$(CXX) -shared -Wl,-soname,$(LIBSONAME) -o $(LIBFILENAME) $(LIBOBJECTS) -lc


$(APP):		$(OBJECTS) $(HEADERS) | $(DIR)
					$(CXX) $(CXXFLAGS) $(LDFLAGS) include/ABElectronics_CPP/ADCPi/ABE_ADCPi.cpp src/main.cpp -rdynamic -o $@
					printf "\n[$(GREEN)OK$(WHITE)] Binary: $(APP)\n"
					echo "-----------------\n"

%.o:			%.cpp
					$(CXX) $(CXXFLAGS) -c $< -o $@ 
					printf "[$(GREEN)OK$(WHITE)] $<\n"

clean:
					rm -rvf $(APP) src/*.o src/*/*.o include/*/*.o include/*/*/*.o include/*/*/*/*.o

install:
					cp $(APP) /usr/local/bin

uninstall:
					rm 
