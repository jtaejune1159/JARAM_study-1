SRCS = stars.c

OBJS = stars.o

RUN = stars.out

USER_SRCS = stars_user.c

USER_OBJS = stars_user.o

USER_RUN = stars_user.out

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
