SRCS = hello.c

OBJS = hello.o

USER_SRCS = hello_user.c

USER_OBJS = hello_user.o

RUN = hello.out

USER_RUN = hello_user.out

CC = gcc

RM = rm -f

${NAME}: ${OBJS} ${USER_OBJS}
	${CC} -o ${RUN} ${OBJS}
	${CC} -o ${USER_RUN} ${USER_OBJS}

all : ${NAME}

bonus: all

clean:
	${RM} ${OBJS}
	${RM} ${USER_OBJS}

fclean: clean
	${RM} ${RUN}
	${RM} ${USER_RUN}
	
re: fclean all
