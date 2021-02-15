# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbensarg <sbensarg@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/02 16:46:56 by sbensarg          #+#    #+#              #
#    Updated: 2021/02/10 14:53:06 by sbensarg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libasm.a
SRCS= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s
OBJS= $(SRCS:.s=.o)
NASM= nasm
CC= gcc
NASMFLAGS= -fmacho64

all: $(NAME)

$(NAME): $(OBJS)
		ar rc $(NAME) $^
		ranlib libasm.a	

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)
re: fclean all
		

