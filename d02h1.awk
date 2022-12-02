BEGIN{
	score =0;
	X=1 #A ROCK  
	Y=2 #B PAPER 
	Z=3 #C SCISSOR
	WIN=6
	DRAW=3
	LOST=0
}
{
if ($0=="A X") {score+=DRAW+X;} 
if ($0=="A Y") {score+=WIN+Y;} 
if ($0=="A Z") {score+=LOST+Z;} 
if ($0=="B X") {score+=LOST+X;} 
if ($0=="B Y") {score+=DRAW+Y;} 
if ($0=="B Z") {score+=WIN+Z;} 
if ($0=="C X") {score+=WIN+X;} 
if ($0=="C Y") {score+=LOST+Y;} 
if ($0=="C Z") {score+=DRAW+Z;} 
}
END{
print score;
}

