INCLUDE_DIRS = \
	../opengl_sysroot/include

LIB_DIRS = \
	../opengl_sysroot/lib

GLAD_SRC = \
	../opengl_sysroot/src/glad/glad.c

all: myfirstopengl.cpp
	g++ -o myfirstopengl -I${INCLUDE_DIRS} -L${LIB_DIRS} -lglfw $^ ${GLAD_SRC}

clean:
	rm -rf myfirstopengl
