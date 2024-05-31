SRCS 	=		./sources/ft_strlen.s \
					./sources/ft_strcmp.s \
					./sources/ft_strcpy.s \
					./sources/ft_strdup.s \
					./sources/ft_read.s \
					./sources/ft_write.s

FLAGS = 	-f macho64
LINUX_FLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror
CC = nasm

OBJS =		./sources/ft_strlen.o \
					./sources/ft_strcmp.o \
					./sources/ft_strcpy.o \
					./sources/ft_strdup.o \
					./sources/ft_read.o \
					./sources/ft_write.o

NAME = libasm.a

.PHONY: all clean fclean re test
all: ${NAME}

$(NAME): ${OBJS}
	ar rcs ${NAME} ${OBJS}
	ranlib ${NAME}

test.out: ${NAME} tests.c
	gcc ${CFLAGS}  tests.c -L. -lasm -o test.out 

test: all
	gcc tests.c libasm.a -o test
	./test

%.o: %.s
	${CC} ${FLAGS} $<

clean:
	rm -rf ${OBJS}

fclean: clean
	rm -rf ${NAME} test $(NAME)

re: fclean all
