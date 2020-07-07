.PHONY: all fclean re

#COMPILATION

CC = gcc
RM = rm -f
NAME = Sully
CFLAGS = -O2 -fomit-frame-pointer -Wall -Wextra -Werror
DIFF_FILE = Sully_5.s \
			Sully_5 \
			Sully_4.s \
			Sully_4 \
			Sully_3.s \
			Sully_3 \
			Sully_2.s \
			Sully_2 \
			Sully_1.s \
			Sully_1 \
			Sully_0.s \
			Sully_0

#PATH

FILES = Sully.s \

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
