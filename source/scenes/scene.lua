

local Scene = Class()


function Scene:init()
  self.gui = Gui()
  -- Quit button
  self.gui:add("button", Screen.width-13, 3, {
    quad    = Assets.getButton("back"),
    action  = function(e, button)
      if button == 1 then
        Screen:transition(function() love.event.quit() end, 3)
      end
    end})
end


function Scene:update(dt)
  self:logic(dt)
  self.gui:update(dt)
end


function Scene:getMouse()
  return self.gui:getMouse()
end


function Scene:draw()
  self:render()
  self.gui:draw()
end

function Scene:logic(dt) end

function Scene:render() end

function Scene:mousepressed(...)
  self.gui:mousepressed(...)
end

function Scene:mousereleased(...)
  self.gui:mousereleased(...)
end

function Scene:keypressed(...)end

function Scene:keyreleased(...)end

return Scene
