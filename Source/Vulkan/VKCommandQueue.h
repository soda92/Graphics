﻿// Copyright 2021 SMS
// License(Apache-2.0)

#pragma once

#include "../CommandQueue.h"

class VKCommandQueue : public CommandQueue
{
public:
	void submit(std::shared_ptr<CommandBuffer> commandBuffer) override;
};