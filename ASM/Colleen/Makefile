.PHONY: all fclean re diff

#COMPILATION

CC = gcc
RM = rm -f
NAME = Colleen
CFLAGS = -O2 -fomit-frame-pointer -Wall -Wextra -Werror
DIFF_FILE = diff_file

#PATH

FILES = Colleen.s \

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
	@./$(NAME) > $(DIFF_FILE)
	diff $(NAME).s $(DIFF_FILE)
