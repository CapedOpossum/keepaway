cmake_minimum_required(VERSION 3.12)

project(keepaway
    VERSION "0.6"
    DESCRIPTION "Keepaway Framework for RoboCup Simulated Soccer"
)

find_package(Threads REQUIRED)
include(CheckLibraryExists)

check_library_exists("dl" "dlopen" "" HAVE_LIBDL)
if (HAVE_LIBDL)
    set(HAVE_DLOPEN 1 CACHE INTERNAL "Indicator whether dlopen() function is available.")
endif ()

# ==============================================================================
# Keepaway Player Build Plan
# ==============================================================================
add_executable(keepaway_player
    "player/Connection.cc"
    "player/SenseHandler.cc"
    "player/ActHandler.cc"
    "player/SoccerTypes.cc"
    "player/Objects.cc"
    "player/WorldModel.cc"
    "player/WorldModelHighLevel.cc"
    "player/WorldModelPredict.cc"
    "player/WorldModelUpdate.cc"
    "player/WorldModelKeepaway.cc"
    "player/WorldModelSayMsgTypes.cc"
    "player/ServerSettings.cc"
    "player/PlayerSettings.cc"
    "player/GenericValues.cc"
    "player/Formations.cc"
    "player/Geometry.cc"
    "player/Parse.cc"
    "player/Logger.cc"
    "player/LoggerDraw.cc"
    "player/BasicPlayer.cc"
    "player/KeepawayPlayer.cc"
    "player/HandCodedAgent.cc"
    "player/tiles2.cc"
    "player/LinearSarsaAgent.cc"
    "player/main.cc"
)

target_link_libraries(
    keepaway_player
    PRIVATE
        Threads::Threads
        "dl"
)

# ==============================================================================
# Keepaway Histogram Generation Build Plan
# ==============================================================================
add_executable(hist
    "tools/hist.cc"
)

# ==============================================================================
# Sliding Window Calculation Build Plan
# ==============================================================================
add_executable(winsum
    "tools/winsum.cc"
)
