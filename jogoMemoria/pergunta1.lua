local dx, dy = canvas:attrSize()

function handler(evt)
    
    if evt.type == 'presentation' and evt.action == 'start' then
        canvas:attrColor('white')
        canvas:drawRect('fill', 0, 0, dx,dy)
        canvas:attrColor('black')
        canvas:attrFont('arial',22,'bold')
        canvas:drawText(dx/3, dy/4, "Olhe atentamente a imagem:")
        canvas:flush()
    end
end

event.register(handler, 'ncl')