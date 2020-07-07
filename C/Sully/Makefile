.PHONY: all fclean re

#COMPILATION

CC = gcc
RM = rm -f
NAME = Sully
CFLAGS = -Wall -Wextra -Werror
DIFF_FILE = Sully_5.c \
			Sully_5 \
			Sully_4.c \
			Sully_4 \
			Sully_3.c \
			Sully_3 \
			Sully_2.c \
			Sully_2 \
			Sully_1.c \
			Sully_1 \
			Sully_0.c \
			Sully_0

#PATH

FILES = Sully.c \

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
