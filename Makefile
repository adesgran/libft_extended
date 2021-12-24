NAME = libft.a
CC = clang
CFLAGS = -Wall -Wextra -Werror
C_FILES = ft_isalpha.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
		  ft_isdigit.c ft_memcpy.c ft_memcmp.c ft_memmove.c ft_strdup.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		  ft_isalnum.c ft_tolower.c ft_strchr.c ft_strncmp.c ft_memchr.c ft_strrchr.c ft_strnstr.c ft_calloc.c ft_atoi.c \
		  ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		  ft_lstnew.c ft_lstadd_front.c \
		  ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c\
		  ft_lstmap.c \
		  ft_get_next_line.c ft_get_next_line_utils.c

O_FILES = ${C_FILES:.c=.o}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all: ${NAME}

${NAME}: ${O_FILES}
	ar rc ${NAME} ${O_FILES}
	ranlib $(NAME)

clean:
	rm -f ${O_FILES} ${O_BONUS}

fclean: clean
	rm -f ${NAME}

re: fclean all
