﻿// Copyright 2021 SMS
// License(Apache-2.0)

#pragma once

#include <chrono>

class Timer
{
public:
	Timer()
		: start(std::chrono::high_resolution_clock::now())
	{
	}

	auto getMilliseconds() const
	{
		return std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::high_resolution_clock::now() - start).count();
	}

	auto getSeconds() const
	{
		return getMilliseconds() / 1000.0;
	}

private:
	std::chrono::steady_clock::time_point start;
};