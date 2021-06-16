local dx, dy = canvas:attrSize()

function handler(evt)
    
    if evt.type == 'presentation' and evt.action == 'start' then
        canvas:attrColor('black')
        canvas:drawRect('fill', 0, 0, dx,dy)
        canvas:attrColor('white')
        canvas:attrFont('arial',22,'bold')
        canvas:drawText(dx/5, dy/4, "Parabéns você acertou!")
        canvas:flush()
    end
end

event.register(handler, 'ncl')
