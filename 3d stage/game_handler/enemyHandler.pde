// handles all enemy spawns etc by Ravi Bechoe

public class EnemyHandler
{
    public ArrayList<BasicCube> my_cubes;
    
    float spawn_cd;
    int enemy_pool;
    
    // the enemy initializer
    public void EnemyHandlerInitializer() 
    {
        my_cubes = new ArrayList<BasicCube>();
        spawn_cd = 0;
    }
    
    // basically the update function for this class
    public void EnemyHandlerLogic()
    {
        EnemyOrientations();
        
        if (spawn_cd <= 0) 
        {
            SpawnEnemies(1);
            spawn_cd = 10;
        }
    }
    
    // update enemy orientations
    void EnemyOrientations()
    {
        // move enemies slowly towards the center
        if (my_cubes.size() > 0) 
        {
            for (int i = 0; i < my_cubes.size(); i++) 
            {
                pushMatrix();
                my_cubes.get(i).pos_z += 0.1f;
                // translate and rotate functions
                DrawEnemies(my_cubes.get(i));
                popMatrix();
            }
        }
    }
    
    // go through amount of spawnable and instantiate enemies at random positions
    void SpawnEnemies(int quantity) 
    {
        // spawn enemies at Z axis -20 and rotate x degrees to have them spawn in a circular position
        for (int i = 0; i < quantity; i++)
        {
            BasicCube enemy = new BasicCube();
            enemy.pos_z = -20;
            enemy.rotation_y = i * 15;
            enemy.health = 3;
            enemy.damage = 1;
            enemy.red = 255;
            my_cubes.add(enemy);
        }
    }
    
    // draw the enemies
    void DrawEnemies (BasicCube enemy) 
    {
        fill(enemy.red, 100, 100, 50); // hp color less red = more dead
        box(100); // enemy
    }
}
