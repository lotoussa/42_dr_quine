.PHONY: all fclean re diff

#COMPILATION

CC = nasm
LD = ld
LIB = System
RM = rm -f
NAME = Grace
CFLAGS = -f macho64
DIFF_FILE = Grace_kid.s

#PATH

FILES = Grace.s \

OBJS = $(FILES:.s=.o) \

#RULES

all: $(NAME)

$(NAME): $(OBJS)
	$(LD) $(OBJS) -l$(LIB) -o $@

%.o: %.s
	$(CC) $(CFLAGS) -o $@ $(FILES)

fclean:
	@$(RM) $(NAME)
	@$(RM) $(OBJS)
	@$(RM) $(DIFF_FILE)
	@echo "\033[31mDiff file deleted.\033[0m"
	@echo "\033[31mProject binary deleted.\033[0m"

re: fclean all

diff: all
	@./$(NAME)
	diff $(NAME).s $(DIFF_FILE)
