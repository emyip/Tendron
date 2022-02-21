  class Tendril
  {

  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments;
  private float startX, startY, endX, endY;
  private float myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float theta, int myX, int myY)
  {
    myAngle = theta;
   myNumSegments = len;
   startX =  myX;
   startY = myY;
  }
  public void show()
  {
    for(int i = 0; i < myNumSegments; i++){
      myAngle += (Math.random()*360);
    endX = startX+(float)Math.cos(radians(myAngle));
    endY = startY+(float)Math.sin(radians(myAngle));
    stroke(219,189,192);
    line(startX, startY, endX, endY);
        startX=endX;
    startY=endY;
    }
      if(myNumSegments>=3){
      Cluster p = new Cluster(myNumSegments/2,(int)(Math.random()*500),(int)(Math.random()*500));
    }
}
  }
