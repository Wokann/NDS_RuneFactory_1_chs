# Makefile

# 定义变量
CC = gcc
CFLAGS = -W"all" -W"extra" -std=c11

# 默认目标
all: transMsg


# 编译规则 
transMsg: transMsg.c
	$(CC) -g transMsg.c $(CFLAGS) -o transMsg.exe

# 清理规则
clean:
	rm -f transMsg.exe

