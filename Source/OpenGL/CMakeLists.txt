set(SOURCES
    "GLCommandBuffer.cpp"
    "GLCommandBuffer.h"
    "GLCommandQueue.cpp"
    "GLCommandQueue.h"
    "GLIndexBuffer.cpp"
    "GLIndexBuffer.h"
    "GLProgram.cpp"
    "GLProgram.h"
    "GLRenderer.cpp"
    "GLRenderer.h"
    "GLShader.cpp"
    "GLShader.h"
    "GLTexture.cpp"
    "GLTexture.h"
    "GLVertexArray.cpp"
    "GLVertexArray.h"
    "GLVertexBuffer.cpp"
    "GLVertexBuffer.h"
)

target_sources(Graphics PRIVATE ${SOURCES})
