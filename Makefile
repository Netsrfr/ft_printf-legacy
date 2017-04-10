#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpfeffer <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/21 09:33:14 by jpfeffer          #+#    #+#              #
#    Updated: 2016/09/21 09:33:15 by jpfeffer         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libftprintf.a

C_FILES = ft_printf.c ft_putwidth.c ft_conversions_alpha.c \
        ft_conversions_numerical.c ft_handlers.c ft_flags_1.c ft_flags_2.c \
        ft_hexadecimal.c

LIBFT = ft_atoi.c ft_itoa.c ft_itoa_base.c ft_itoa_unsigned.c ft_memalloc.c \
ft_mylog.c ft_putchar.c ft_putstr.c ft_strcpy.c ft_strdup.c ft_strjoin.c \
ft_strlen.c ft_strncpy.c ft_tolower.c

CFLAGS = -Wall -Wextra -Werror

LIBFT_SRCS = $(addprefix libft/,$(LIBFT))

SRCS = $(C_FILES) $(LIBFT_SRCS)

OBJ = $(C_FILES:.c=.o) $(LIBFT:.c=.o)

.PHONY: all test clean fclean re

all: $(NAME)

$(NAME):
	gcc $(CFLAGS) -c $(SRCS)
	ar rc $(NAME) $(OBJ)

test: fclean
	gcc $(SRCS) main.c

clean:
	rm -f $(OBJ) main.o

fclean: clean
	rm -f $(NAME) a.out libft/libft.a

re: fclean all