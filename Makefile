NAME = libft.a

SRCS = ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isprint.c \
 		ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
		ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c \
		ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c\
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
		ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJS = ${SRCS:.c=.o}
BONUS_OBJS = ${BONUS:.c=.o}

CC = gcc
CFLAGS = -Wall -Wextra -Werror
REMOVE = rm -f

BOLD_GREEN  = \033[1;92m
BOLD_YELLOW = \033[1;93m
BOLD_RED    = \033[1;91m
BOLD_BLUE   = \033[1;94m
BOLD_PURPLE = \033[1;95m
BOLD_CYAN   = \033[1;96m
RESET       = \033[0m

all: ${NAME}


${NAME}: ${OBJS}
		@ar rcs ${NAME} ${OBJS}
		@echo "$(BOLD_GREEN)Library created! ${NAME}$(RESET)"

.c.o:
		@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
		@echo "$(BOLD_CYAN)Cleaning object files...$(RESET)"
		@${REMOVE} ${OBJS} ${BONUS_OBJS}

fclean: clean
		@echo "$(BOLD_RED)✘ Removing library: ${NAME}$(RESET)"
		@${REMOVE} ${NAME} ${BONUS_NAME}

re: fclean all

bonus: all ${BONUS_OBJS}
		@ar rcs ${NAME} ${BONUS_OBJS}
		@echo "$(BOLD_PURPLE)✨ Bonus!$(RESET)"


.PHONY:	all clean fclean re bonus
