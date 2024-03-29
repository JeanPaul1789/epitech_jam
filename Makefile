##
## EPITECH PROJECT, 2022
## Epitech JAM
## File description:
## Makefile
##

SRC =	src/Game.cpp						\
		src/mini_games/SchoolPriorities.cpp \
		src/mini_games/defeatKFC.cpp \
		src/mini_games/DefeatKFC.cpp \
		src/mini_games/DodgeBottle.cpp	\
		src/mini_games/beetsaber.cpp 		\
		src/mini_games/CubeComming.cpp		\
		src/mini_games/psykologu.cpp		\
		src/mini_games/marcolito.cpp		\
		src/mini_games/Horse.cpp 			\
		src/mini_games/laruelavrai.cpp 			\
		src/Scenario.cpp 					\
		src/mini_games/julienlafarge.cpp 	\
		src/DecisionWall.cpp				\
		src/mini_games/cake.cpp				\
		src/achievement.cpp 				\
		src/mini_games/space.cpp 			\
		src/ScriptChoice.cpp				\
		main.cpp

OBJ =	$(SRC:.cpp=.o)

CPPFLAGS	= -I./headers/ -std=c++2a -W -J4 -Wall -Wextra -Wpedantic

CSFMLFLAGS	= -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

NAME	=	guys_life

all: $(NAME)

$(NAME): $(OBJ)
	g++ -o $(NAME) $(OBJ) $(CSFMLFLAGS)

debug: CPPFLAGS += -g3
debug: fclean all

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -f ../$(NAME)

re: fclean all