set(SOURCES
    "Image.cpp"
    "Image.h"
    "Monitor.cpp"
    "Monitor.h"
    "Timer.hpp"
    "Window.cpp"
    "Window.h"
)
set(CMAKE_INCLUDE_CURRENT_DIR ON)


target_sources(Graphics PRIVATE ${SOURCES})

