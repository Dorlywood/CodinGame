import java.util.*;
import java.io.*;
import java.math.*;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/
class Player {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int lightX = in.nextInt(); // the X position of the light of power
        int lightY = in.nextInt(); // the Y position of the light of power
        int initialTX = in.nextInt(); // Thor's starting X position
        int initialTY = in.nextInt(); // Thor's starting Y position

        // %%%%%%%%%%%%%%%-------- MY CODE STARTS HERE ----------%%%%%%%%%%%%%%%
        int deltaX = initialTX - lightX ;
        int deltaY = initialTY - lightY;
        // %%%%%%%%%%%%%%%-------- MY CODE ENDS HERE ------------%%%%%%%%%%%%%%%

        // game loop
        while (true) {
            int remainingTurns = in.nextInt(); // The remaining amount of turns Thor can move. Do not remove this line.

            // Write an action using System.out.println()
            // To debug: System.err.println("Debug messages...");

            // A single line providing the move to be made: N NE E SE S SW W or NW

            // %%%%%%%%%%%%%%%-------- MY CODE STARTS HERE ----------%%%%%%%%%%%%%%%

            System.err.println("deltaX=" + deltaX);
            System.err.println("deltaY=" + deltaX);

            // Negative deltaY means that light is below me, therefore I need to go south
            // Positive deltaY means that light is above me, therefore I need to go north
            // Negative deltaX means that light is to my right, therefore I need to go east
            // Positive deltaY means that light is to my left, therefore I need to go west

            if (deltaY>0 && deltaX>0) {
                System.out.println("NW");
                deltaY-=1;
                deltaX-=1;
            } else if (deltaY>0 && deltaX<0) {
                System.out.println("NE");
                deltaY-=1;
                deltaX+=1;
            } else if (deltaY<0 && deltaX>0) {
                System.out.println("SW");
                deltaY+=1;
                deltaX-=1;
            } else if (deltaY<0 && deltaX<0) {
                System.out.println("SE");
                deltaY+=1;
                deltaX+=1;
            } else if (deltaY<0) {
                System.out.println("S");
                deltaY+=1;
            } else if (deltaY>0) {
                System.out.println("N");
                deltaY-=1;
            } else if (deltaX<0) {
                System.out.println("E");
                deltaX+=1;
            } else if (deltaX>0) {
                System.out.println("W");
                deltaX-=1;
            }

            // %%%%%%%%%%%%%%%-------- MY CODE ENDS HERE ------------%%%%%%%%%%%%%%%

        }
    }
}
