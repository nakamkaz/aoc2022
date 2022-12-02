BEGIN{
	score =0;
	A=1;X=1 #A ROCK  # 2nd column's X means you need to lose
	B=2;Y=2 #B PAPER  # 2nd column's  Y means you need to draw
	C=3;Z=3 #C SCISSOR #2nd column's  Z means you need to win
	WIN=6
	DRAW=3
	LOST=0
}
{
if ($0=="A X") { score += C+LOST;} 
if ($0=="A Y") { score += A+DRAW;} 
if ($0=="A Z") { score += B+WIN;} 
if ($0=="B X") { score += A+LOST;} 
if ($0=="B Y") { score += B+DRAW;} 
if ($0=="B Z") { score += C+WIN;} 
if ($0=="C X") { score += B+LOST;} 
if ($0=="C Y") { score += C+DRAW;} 
if ($0=="C Z") { score += A+WIN;}
print " " $0," : ", score
}
END{
print  score;
}
