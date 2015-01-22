float speed = -10.0f;
float speed2 = 10.0f;
class Bullets extends Player
{
  float x, y,x1,y1;

  float toLive = 5.0f;
  float ellapsed = 0.0;
  float timeDelta = 1.0f / 60.0f;
  
  Bullets()
  {
    x = pos.x + (ship_size * 2);
    y = pos.y;
    x1 = m_ship.x;
    y1 = m_ship.y;
  }
  
  void move()
  {
    y += speed;
    ellapsed += timeDelta;
  }
   
  void display()
  {
    stroke(255);
    line(x , y, x, y + speed); 
    float temp_var = y + speed;
    
  }
  
  void display_enemy_bullet()
  {
    stroke(255);
    line(x1 , y1, x1, y1 + speed2);
    println(fire);
  }
  
  void enemy_move()
  {
    y1 += speed2;
  }
}
