BatFleeState = Class{__includes = BaseState}

function BatFleeState:init(entity)
    self.entity = entity
    self.entity.dx = 0
    self.entity.dy = 0
    self.entity.displacementX = 0
    self.entity.displacementY = 0
    self.stateName = 'flee'
    sounds['cleanse']:play()
    self.entity.damageFlash = true
    self.corrupted = false
    self.entity.animations = self.entity:createAnimations(ENTITY_DEFS['bat'].animations)
    self.entity:changeAnimation('flee')
    self.entity.flyTL = false
    self.entity.flyTR = false
    self.entity.flyBL = false
    self.entity.flyBR = false

    --TODO FACTOR THIS INTO HOR AND VERTICAL
    --RIGHT EXIT
    if self.entity.x > gPlayer.x then
        --BOTTOM RIGHT EXIT
        if self.entity.y > gPlayer.y then
            self.entity.dy = BAT_EXIT_SPEED
            self.entity.dx = BAT_EXIT_SPEED
        else --TOP RIGHT EXIT
            self.entity.dy = -BAT_EXIT_SPEED
            self.entity.dx = BAT_EXIT_SPEED
        end
    else --LEFT EXIT
        --BOTTOM LEFT EXIT
        if self.entity.y > gPlayer.y then
            self.entity.dy = BAT_EXIT_SPEED
            self.entity.dx = -BAT_EXIT_SPEED
        --TOP LEFT EXIT
        else
            self.entity.dy = -BAT_EXIT_SPEED
            self.entity.dx = -BAT_EXIT_SPEED
        end
    end
end

function BatFleeState:processAI(params, dt, player)
    --TODO FACTOR THIS INTO HOR AND VERTICAL
    --RIGHT EXIT
    if self.entity.x > gPlayer.x then
        --BOTTOM RIGHT EXIT
        if self.entity.y > gPlayer.y then
            self.entity.dy = BAT_EXIT_SPEED
            self.entity.dx = BAT_EXIT_SPEED
        else --TOP RIGHT EXIT
            self.entity.dy = -BAT_EXIT_SPEED
            self.entity.dx = BAT_EXIT_SPEED
        end
    else --LEFT EXIT
        --BOTTOM LEFT EXIT
        if self.entity.y > gPlayer.y then
            self.entity.dy = BAT_EXIT_SPEED
            self.entity.dx = -BAT_EXIT_SPEED
        --TOP LEFT EXIT
        else
            self.entity.dy = -BAT_EXIT_SPEED
            self.entity.dx = -BAT_EXIT_SPEED
        end
    end

end

function BatFleeState:update(dt)

end

function BatFleeState:render()
    love.graphics.setColor(WHITE)
    local anim = self.entity.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
        self.entity.x, self.entity.y)

        --[[
        love.graphics.print('dx: ' .. tostring(self.entity.dx), 0, 0)
        love.graphics.print('dy: ' .. tostring(self.entity.dy), 0, 10)
        love.graphics.print('walkSpeed: ' .. tostring(self.entity.walkSpeed), 0, 20)
        --]]
end
