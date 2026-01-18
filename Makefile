CC = cc

AR = ar rcs
RM = rm -rf

SRC_DIR = srcs/
BIN_DIR = mbin

FILES = catmeme.c groovebattle.c usleep.c rctmeme.c usrbanner.c angrycat.c

BIN_FILES = $(addprefix $(BIN_DIR)/, $(FILES:.c=))

# t:
# 	echo $(BIN_FILES);
$(BIN_DIR)/% : $(SRC_DIR)%.c | $(BIN_DIR)
	$(CC) $< -o $@
	# chmod u+x $@

all: $(BIN_FILES)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	$(RM) $(BIN_FILES) $(BIN_DIR)

fclean: clean

re: fclean all