NAME	= philo
FLAGS	= -Wall -Werror -Wextra -g
CC		= gcc

INC		= -I philosophers.h

SRC_DIR	= src/
SRC_LST	= philo.c utils.c

OBJ_DIR	= obj/
OBJ_LST	= $(SRC_LST:.c=.o)
OBJ		= $(addprefix $(OBJ_DIR),$(OBJ_LST))

all:	$(NAME)

$(NAME):	$(OBJ) philosophers.h
	@$(CC) -o $(NAME) $(OBJ)
	@echo "##### philosophers compiling finished! #####"

$(OBJ_DIR)%.o:	$(SRC_DIR)%.c
	@mkdir -p $(OBJ_DIR)
	@echo "##### Creating" [ $@ ] " #####"
	@$(CC) $(FLAGS) -o $< -c $< $(INC)

clean:
	@rm -f $(OBJ)
	@echo "##### Removed object files #####"

fclean:	clean
	@rm -f $(NAME)
	@echo "##### Removed binary files #####"

re:			fclean all

.PHONY:		all clean fclean re
