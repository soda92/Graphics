﻿// Copyright 2021 SMS
// License(Apache-2.0)

#pragma once

#include "../IndexBuffer.h"
#include <glad/glad.h>

class GLIndexBuffer : public IndexBuffer
{
public:
    GLIndexBuffer(const void* data, size_t size, size_t count, Usage usage);
    virtual ~GLIndexBuffer();

    void bind() override;

private:
    GLuint handle;
};