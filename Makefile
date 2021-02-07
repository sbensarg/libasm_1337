# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbensarg <sbensarg@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/02 16:46:56 by sbensarg          #+#    #+#              #
#    Updated: 2021/02/07 15:29:27 by sbensarg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libasm.a
SRCS= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s
NASM= nasm
CC= gcc
NASMFLAGS= -fmacho64
CFLAGS= -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(NASM)
		#$(CC) $(CFLAGS) *.o main.c 
		ar -rc libasm.a *.o
		ranlib libasm.a	
$(NASM):
	$(foreach var,$(SRCS),$(NASM) $(NASMFLAGS) $(var) -o $(var:.s=.o);)
clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)
re: fclean all
		

