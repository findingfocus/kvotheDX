PlayState = Class{__includes = BaseState}

function PlayState:init()
    self.player = Player {
        animations = ENTITY_DEFS['player'].animations,
        walkSpeed = ENTITY_DEFS['player'].walkSpeed,
        x = 30,
        y = 30,
        width = TILE_SIZE,
        height = TILE_SIZE,
    }
    self.player.stateMachine = StateMachine {
        ['player-walk'] = function() return PlayerWalkState(self.player, self.scene) end,
        ['player-idle'] = function() return PlayerIdleState(self.player) end,
    }
    self.player:changeState('player-idle')
    ninetyDegrees = math.rad(90)
    oneEightyDegrees = math.rad(180)
    twoSeventyDegress = math.rad(270)
    rotate = 0
    local columns = 10
    local rows = 8
    cameraX = 0
    sceneView = Scene(self.player, 1, 1)
    tilesheet = love.graphics.newImage('graphics/masterSheet.png')
    --textures = love.graphics.newImage('graphics/textures.png')
    quads = GenerateQuads(tilesheet, TILE_SIZE, TILE_SIZE)
end

function PlayState:update(dt)
    cameraX = cameraX + 1
    sceneView:update(dt)

    if not sceneView.shifting then
        --kvothe:update(dt)
    end
    rotate = rotate + .05
    love.window.setPosition(400, 90)
end

function PlayState:render()
	love.graphics.clear(GRAY)

    love.graphics.push()
    sceneView:render()
    love.graphics.pop()

    --HUD RENDER
    love.graphics.setColor(YELLOW)
    love.graphics.rectangle('fill', 0, VIRTUAL_HEIGHT - 16, VIRTUAL_WIDTH, 16)
    love.graphics.setColor(BLACK)

	love.graphics.setFont(pixelFont)
    love.graphics.printf('KvotheDX', 0, VIRTUAL_HEIGHT - 15, VIRTUAL_WIDTH, 'center')
    if love.keyboard.isDown('up') then
        love.graphics.setColor(FADED)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 16, SCREEN_HEIGHT_LIMIT - 11 + KEYLOGGER_YOFFSET, 0, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --UP
    else
        love.graphics.setColor(WHITE)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 16, SCREEN_HEIGHT_LIMIT - 11 + KEYLOGGER_YOFFSET, 0, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --UP
    end
    if love.keyboard.isDown('right') then
        love.graphics.setColor(FADED)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 8, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, ninetyDegrees, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --RIGHT
    else
        love.graphics.setColor(WHITE)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 8, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, ninetyDegrees, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --RIGHT
    end
    if love.keyboard.isDown('down') then
        love.graphics.setColor(FADED)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 16, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, oneEightyDegrees, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --DOWN
    else
        love.graphics.setColor(WHITE)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 16, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, oneEightyDegrees, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --DOWN
    end
    if love.keyboard.isDown('left') then
        love.graphics.setColor(FADED)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 24, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, twoSeventyDegress, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --LEFT
    else
        love.graphics.setColor(WHITE)
        love.graphics.draw(arrowKeyLogger, ROTATEOFFSET + VIRTUAL_WIDTH - 24, SCREEN_HEIGHT_LIMIT - 4 + KEYLOGGER_YOFFSET, twoSeventyDegress, 1, 1, ROTATEOFFSET, ROTATEOFFSET) --LEFT
    end

    --kvothe:render()

    --DEBUG PRINT
    if love.keyboard.isDown('1') then
        love.graphics.setColor(DEBUG_BG)
        love.graphics.rectangle('fill', 0, 0, VIRTUAL_WIDTH, VIRTUAL_HEIGHT)
        love.graphics.setColor(WHITE)
        love.graphics.setFont(tinyFont)
        love.graphics.print('MAP[' .. tostring(sceneView.currentMap.row) .. '][' .. tostring(sceneView.currentMap.column) .. ']', 5, 15)
        love.graphics.print('kvothe.x: ' .. string.format("%.1f", self.player.x), 5, 25)
        love.graphics.print('kvothe.y: ' .. string.format("%.1f", self.player.y), 5, 35)
        love.graphics.print('direction: ' .. tostring(self.player.direction), 5, 45)
        love.graphics.print('LASTINPUT: ' .. tostring(self.player.lastInput), 5, 55)
    end
    if love.keyboard.isDown('2') then
        --]]
    end
end
