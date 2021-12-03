TARGET = minishell
GCC = gcc
FLGS = -Wall -Wextra -Werror
DIR_SRC = ./src/
DIR_HEADER = ./header/
SRCS = ./main.c

all : $(TARGET)
$(TARGET) : $(addprefix $(DIR_SRC), $(SRCS:.c=.o))
	$(GCC) $(FLGS) $? -o $@

$(addprefix $(DIR_SRC), *.o) : $(addprefix $(DIR_SRC), *.c)
	$(GCC) $(FLGS) -c $? -I $(DIR_HEADER)

clean : 
	rm $(addprefix $(DIR_SRC), $(SRCS:.c=.o))

fclean : 
	rm $(TARGET)

.PHONY : all clean fclean