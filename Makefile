# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: npetitpi <npetitpi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/10 18:08:29 by npetitpi          #+#    #+#              #
#    Updated: 2022/05/25 12:22:41 by npetitpi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra

SRCS = ft_isalnum.c ft_isprint.c ft_isalpha.c \
	   ft_isascii.c ft_isdigit.c ft_strchr.c \
	   ft_strlcat.c ft_strlcpy.c ft_strlen.c \
	   ft_strncmp.c ft_strrchr.c ft_tolower.c \
	   ft_toupper.c ft_atoi.c ft_strdup.c \
	   ft_strnstr.c ft_memset.c ft_memcpy.c \
	   ft_memmove.c ft_bzero.c ft_memchr.c \
	   ft_memcmp.c ft_calloc.c ft_putchar_fd.c \
	   ft_putstr_fd.c ft_putnbr_fd.c \
	   ft_putendl_fd.c ft_striteri.c \
	   ft_substr.c ft_strmapi.c ft_strjoin.c \
	   ft_itoa.c ft_strtrim.c ft_split.c

BONUS = ft_lstadd_front.c ft_lstnew.c \
		ft_lstlast.c ft_lstsize.c ft_lstadd_back.c \
		ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
		ft_lstiter.c ft_lstmap.c \

OBJS 		= $(SRCS:.c=.o)

OBJS_BONUS	= $(BONUS:.c=.o)

RM 			= rm -f

all:		$(NAME)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

$(NAME):	$(OBJS) 
	ar rc $(NAME) $(OBJS)

bonus:		$(OBJS) $(OBJS_BONUS)
	ar rc $(NAME) $(OBJS) $(OBJS_BONUS)

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

# gcc $(FLAGS) -c $< -o $(<:.c=.o)