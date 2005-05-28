require("scripts/functions.lua")

function spawn()
	particlemassmin = randomfloat(1,1000)
	particlemassmax = randomfloat(1,1000)
	estmass = (particlemassmin + particlemassmax) / 2 * spawnparticles
	galaxyradius = randomfloat(10,1000)
	speedbase = randomfloat(0,.0001)
	speedbase = .0000001
	for i=0,spawnparticles-1 do
		radius = randomfloat(0,galaxyradius)
		speed = speedbase * radius * math.sqrt(estmass) 
		angle = randomfloat(0,2*math.pi)
		pos = v(math.cos(angle)*radius, math.sin(angle)*radius, randomfloat(-1,1))
		vel = v(math.cos(angle+math.pi/2)*speed*radius, math.sin(angle+math.pi/2)*speed*radius, 0)
		mass = randomfloat(particlemassmin,particlemassmax)
		particle(i, pos, vel, mass)
	end
end
