// By Ravi Bechoe
// the collision checker

class CollisionCheck 
{
    // TODO 
    // Option 1 - pros: accurate, cons: heavy
    // from edge collision checker to box collision checker
    // get center pos + size to calculate corners
    // compare corners in order to detect a collision
    // return true if collision has been detected
    
    // Option 2 - pros: low - easier to create, cons: not accurate
    // compare distances of center positions +- the sizes in order to detect a spherical collision
    
    // visual representation of collision checking methods
    // https://gyazo.com/f4e433180303569689de56d2246866d8
    
    // compare orientation of 2 objects and calculate the distances between the 2 to figure out if they are within collision range
    public boolean sphereColliderCheck (float obj1_position, float obj1_size, float obj2_position, float obj2_size) 
    {
        // use x and z axis to define position of objects on stage
              
        return true;
    }
}
