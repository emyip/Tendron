public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
       Tendril[] emily = new Tendril[NUM_STEMS];
       for(int i = 0; i < emily.length; i++){
        emily[i] = new Tendril(len, (float)(Math.random()*360), x, y);
        emily[i].show();
       }
    }
}
