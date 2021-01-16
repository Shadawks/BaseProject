##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## BASE PROJECT
##

SRC	=	main.c

OBJ	=	$(SRC:.c=.o)

NAME	= 	main

all:	$(NAME)

$(NAME):
	gcc $(SRC) -Wall -Wextra -I include -o $(NAME) -g -lm

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

debug:
	gcc $(SRC) -Wall -Wextra -I include -o debug -g -lm
	valgrind  --tool=memcheck --leak-check=yes --track-origins=yes --leak-check=full --show-leak-kinds=all ./debug

re:	fclean all

.PHONY:	all clean fclean re
