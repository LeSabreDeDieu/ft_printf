# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sgabsi <sgabsi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/21 16:28:59 by sgabsi            #+#    #+#              #
#    Updated: 2023/11/22 13:59:51 by sgabsi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#################
##  VARIABLES  ##
#################

# Directories
SRCDIR		=	./srcs
INCDIR		=	./includes
OBJDIR		=	objs

# Sources
SRCS = $(SRCDIR)/ft_printf.c \
       $(SRCDIR)/ft_printf_utils.c \
       $(SRCDIR)/ft_print_hex.c \
       $(SRCDIR)/ft_print_ptr.c \
       $(SRCDIR)/ft_print_unsigned.c

# Objects
OBJS = $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

# Libraries
LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

# Output
NAME		=	ftprintf.a
NAMESO		=	ftprintf.so

# Compiler
CC			=	cc
CFLAGS		=	-Wall -Werror -Wextra
OPTIONS		=	-I $(INCDIR)

# Colors
GREEN		=	\033[0;32m
YELLOW		=	\033[0;33m
RED			=	\033[0;31m
NC			=	\033[0m

#################
##  TARGETS    ##
#################

all: pre_comp $(NAME)

pre_comp :
	@echo "$(YELLOW)********* Début de la compilation de la librairie libftprintf *********$(NC)"
	
$(NAME): $(OBJS) $(LIBFT)
	@ar rcs $@ $^
	@cp libft/libft.a .
	@mv libft.a $(NAME)
	@echo "$(GREEN)********* Compilation terminée avec succès! *********$(NC)"
	@echo "$(GREEN)********* La librairie $(NAME) a été créée. *********$(NC)"

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) $(OPTIONS) -c $< -o $@

$(LIBFT):
	@make -C $(LIBFT_DIR)

clean:
	@rm -rf $(OBJDIR)
	@make -C $(LIBFT_DIR) clean
	@echo "$(YELLOW)********* Suppression des fichiers objets *********$(NC)"

fclean: clean
	@rm -f $(NAME)
	@/bin/rm -f $(NAMESO) a.out
	@make -C $(LIBFT_DIR) fclean
	@echo "$(RED)********* Suppression de la librairie $(NAME) *********$(NC)"

re: fclean all

.PHONY: all clean fclean re
