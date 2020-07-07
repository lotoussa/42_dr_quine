.PHONY: all fclean re diff

#COMPILATION

CC = gcc
RM = rm -f
NAME = Grace
CFLAGS = -Wall -Wextra -Werror
DIFF_FILE = Grace_kid.c

#PATH

FILES = Grace.c \

#RULES

all: $(NAME)

$(NAME): $(FILES)
	$(CC) $(CFLAGS) -o $@ $(FILES)

fclean:
	@$(RM) $(NAME)
	@$(RM) $(DIFF_FILE)
	@echo "\033[31mDiff file deleted.\033[0m"
	@echo "\033[31mProject binary deleted.\033[0m"

re: fclean all

diff: all
	@./$(NAME)
	diff $(NAME).c $(DIFF_FILE)
