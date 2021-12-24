NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

GNL = $(wildcard gnl/*.c)
FT_PRINTF = $(wildcard ft_printf/*.c)
MEM = $(wildcard mem/*.c)
LST = $(wildcard lst/*.c)
STR = $(wildcard str/*.c)

C_FILES = ${GNL} ${FT_PRINTF} ${MEM} ${LST} ${STR} 

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
