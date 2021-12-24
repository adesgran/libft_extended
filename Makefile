NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
C_FILES = ft_isalpha.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
		  ft_isdigit.c ft_memcpy.c ft_memcmp.c ft_memmove.c ft_strdup.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		  ft_isalnum.c ft_tolower.c ft_strchr.c ft_strncmp.c ft_memchr.c ft_strrchr.c ft_strnstr.c ft_calloc.c ft_atoi.c \
		  ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		  lst/ft_lstnew.c lst/ft_lstadd_front.c lst/ft_lstsize.c lst/ft_lstlast.c \
		  lst/ft_lstadd_back.c lst/ft_lstdelone.c lst/ft_lstclear.c lst/ft_lstiter.c\
		  lst/ft_lstmap.c \
		  gnl/ft_get_next_line.c gnl/ft_get_next_line_utils.c \
		  ft_printf/ft_printf.c ft_printf/print_c.c ft_printf/print_d.c ft_printf/print_i.c\
		  ft_printf/print_lowx.c ft_printf/print_p.c ft_printf/print_s.c ft_printf/print_topx.c\
		  ft_printf/print_u.c

O_FILES = ${C_FILES:.c=.o}
H_FILES = -I .

.c.o:
	${CC} ${CFLAGS} ${H_FILES} -c $< -o ${<:.c=.o}

all: ${NAME}

${NAME}: ${O_FILES}
	ar rc ${NAME} ${O_FILES}
	ranlib $(NAME)

clean:
	rm -f ${O_FILES}

fclean: clean
	rm -f ${NAME}

re: fclean all
