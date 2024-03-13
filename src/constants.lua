--[[
WINDOW_WIDTH = 960
WINDOW_HEIGHT = 864
--]]
--TOGGLE FOR 4 TIMES UPSIZE
---[[
WINDOW_WIDTH = 640
WINDOW_HEIGHT = 576
--]]
--
--TOGGLE FOR GB RESOLUTION
--[[
WINDOW_WIDTH = 160
WINDOW_HEIGHT = 144
--]]
--160x144 GAMEBOY RESOLUTION
VIRTUAL_WIDTH =  160
VIRTUAL_HEIGHT = 144

SCREEN_WIDTH_LIMIT = 160
SCREEN_HEIGHT_LIMIT = VIRTUAL_HEIGHT - 16

PLAYER_WALK_SPEED = 1
VELOCITY = 0.9
ROTATEOFFSET = 4
MAP_RENDER_OFFSET_Y = 16

EDGE_BUFFER_PLAYER = 3
COLLISION_BUFFER = 2
BOTTOM_BUFFER = 2


OFFSCREEN_BUFFER = 12
OFFSCREEN_TOP_BUFFER = 3
KEYLOGGER_YOFFSET = 16
TILE_SIZE = 16
---[[
FIRST = 1
SECOND = 2
THIRD = 3
FOURTH = 4
FIFTH = 5
SIXTH = 6
SEVENTH = 7
EIGHTH = 8
NINTH = 9
--]]
INPUT_LIST = {}


--READY TO MINGLE SPRITES
DIRT = 1021
DIRT_PATH = 1020
SAND = 1024
SAND_BONE = 1023
SAND_WOOD = 1022
TALL_GRASS = 1019
BRICK_BLUE = 1016
BRICK_RED = 1017
BRICK_GREEN = 1018
FLOWER = 1012

GRASS_TL = 1
GRASS_TE = 2
GRASS_TR = 3
GRASS_LE = 33
GRASS = 34
GRASS_RE = 35
GRASS_BL = 65
GRASS_BE = 66
GRASS_BR = 67

GRASS_FADED_TL = 4
GRASS_FADED_TE = 5
GRASS_FADED_TR = 6
GRASS_FADED_LE = 36
GRASS_FADED = 37
GRASS_FADED_RE = 38
GRASS_FADED_BL = 68
GRASS_FADED_BE = 69
GRASS_FADED_BR = 70

GRASS_ISLAND_TL = 7
GRASS_ISLAND_TE = 8
GRASS_ISLAND_TR = 9
GRASS_ISLAND_LE = 39
GRASS_ISLAND = 40
GRASS_ISLAND_RE = 41
GRASS_ISLAND_BL = 71
GRASS_ISLAND_BE = 72
GRASS_ISLAND_BR = 73

--QUADRUPLE SPRITES
TREE_BL = 129
TREE_BR = 130
TREE_TL = 97
TREE_TR = 98
--SAND, WATER, BLC_GRASS, BRICK, POST, FLOWER

--COLORS
FADED = {105/255, 105/255, 105/255, 255/255}
GRAY = {140/255, 140/255, 165/255, 255/255}
YELLOW = {255/255, 255/255, 140/255, 255/255}
BLACK = {0/255, 0/255, 0/255, 255/255}
WHITE = {255/255, 255/255, 255/255, 255/255}
DEBUG_BG = {0/255, 0/255, 0/255, 90/255}
GREEN = {0/255, 255/255, 0/255, 255/255}
RED = {255/255, 0/255, 0/255, 255/255}

