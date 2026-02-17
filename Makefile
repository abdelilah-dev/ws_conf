CC = cc

AR = ar rcs
RM = rm -rf

SRC_DIR = srcs/
BIN_DIR = mbin

FILES = catmeme.c groovebattle.c usleep.c rctmeme.c usrbanner.c angrycat.c lofi.c

BIN_FILES = $(addprefix $(BIN_DIR)/, $(FILES:.c=))

$(BIN_DIR)/% : $(SRC_DIR)%.c | $(BIN_DIR)
	@$(CC) $< -o $@
	@chmod u+x $@

all: $(BIN_FILES)
	@rm -rf $(SRC_DIR)

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

clean:
	$(RM) $(BIN_FILES) $(BIN_DIR)

fclean: clean

re: fclean all
