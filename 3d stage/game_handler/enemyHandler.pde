// handles all enemy spawns etc by Ravi Bechoe

public class EnemyHandler
{
    public ArrayList<BasicCube> my_cubes;
    
    float spawn_cd;
    int enemy_pool;
    
    public void EnemyHandlerLogic()
    {
        EnemyOrientations();
        DrawEnemies();
        
        if (spawn_cd <= 0) 
        {
            SpawnEnemies(10);
            spawn_cd = 10;
        }
    }
    
    // update enemy orientations
    void EnemyOrientations()
    {
        // move enemies slowly towards the center
        for (int i = 0; i < my_cubes.size(); i++) 
        {
            pushMatrix();
            my_cubes.get(i).pos_z += 0.1f;
            popMatrix();
        }
    }
    
    // go through amount of spawnable and instantiate enemies at random positions
    void SpawnEnemies(int quantity) 
    {
        // spawn enemies at Z axis -20 and rotate x degrees to have them spawn in a circular position
        for (int i = 0; i < quantity; i++)
        {
            pushMatrix();
            BasicCube enemy = new BasicCube();
            enemy.pos_z = -20;
            enemy.rotation_y = i * 15;
            popMatrix();
        }
    }
    
    // draw the enemies
    void DrawEnemies () 
    {
        // draw the cubes
    }
}
