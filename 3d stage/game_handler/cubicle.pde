// data for the cube by Ravi Bechoe

public class BasicCube
{
    // position values
    public float pos_x;
    public float pos_y;
    public float pos_z;
    public float rotation_y; // stage rotation
    
    // color values
    public float red;
    
    // basic values
    public int health;
    public int damage;
    
    // get hit
    public void takeDamage(int damage)
    {
        health -= damage;
        
        if (health <= 0) death();
    }
    
    // logic for death animation
    void death()
    {
        // destroy object and remove from enemy handler
        // instantiate particle effect
        // award points
        // increase multiplier
    }
}
