MotherShip m_ship;
class MotherShip
{
  float x, y, m_width, m_height;
  boolean alive;
  int speed = 10;
  boolean fire = true;
  boolean flag1 = false;
  boolean flag2 = false;
  boolean flag3 = true;
  float bulletX, bulletY;
  
  MotherShip(float x, float y, int m_width, int m_height, boolean alive)
  {
    this.x = x;
    this.y = y;
    this.m_width = m_width;
    this.m_height = m_height;
    this.alive = alive;
  }
  
  void display()
  {
    if(alive == true)
    {
       stroke(#0D5AFC);
       fill(#6092FA);
       ellipse(x, y - 15, m_width - 30, m_height - 15);
       ellipse(x, y, m_width, m_height);
       stroke(#6092FA);
       ellipse(x, y - 15, m_width - 30, m_height - 15);
    }
  }
  
  void move()
  {
     if( x >= 500)
     {
       flag1 = true;
       flag2 = false;
       flag3 = false;
     }
     
     if(x <= 0)
     {
       flag1 = false;
       flag2 = true;
       flag3 = false;
     }
     
     if(flag2 == true)
     {
       x ++;
     }
     
     if(flag1 == true)
     {
       x --;
     }
     
     if(flag3 == true)
     {
       x ++;
     }
  }
  
  void m_fire_display()
  {
    int count = 0;
     Bullets enemy_bullets= new Bullets();
     enemy_bullets.x = x;
     enemy_bullets.y = y;
    int temp = frameCount % 90;
    
    if(temp == 1)
    {
        m_bullet.add(enemy_bullets);
    }
  }
}
  