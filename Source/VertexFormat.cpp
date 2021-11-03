﻿// Copyright 2021 SMS
// License(Apache-2.0)

#include "VertexFormat.h"
#include <unordered_map>

namespace
{

std::unordered_map<Format, size_t> sizeOf = {
	{Format::R8F, 4},
	{Format::RG8F, 4 * 2},
	{Format::RGB8F, 4 * 3},
	{Format::RGBA8F, 4 * 4}
};

}

size_t VertexFormat::Attribute::getSize() const
{
	return sizeOf[format];
}

VertexFormat::VertexFormat(const std::initializer_list<Attribute>& list)
	: attribs(list)
{
	for(auto& attr : attribs)
	{
		attr.offset = stride;
		stride += attr.getSize();
	}
}

const std::vector<VertexFormat::Attribute> VertexFormat::getAttributes() const
{
	return attribs;
}

void VertexFormat::setStride(size_t stride)
{
	this->stride = stride;
}

size_t VertexFormat::getStride() const
{
	return stride;
}