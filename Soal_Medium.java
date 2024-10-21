package Soal_FlorunaQuiz;
import java.util.Scanner;
public class Soal_Medium {
    
    public static void main(String[] args) {
        
        Scanner scan = new Scanner (System.in);
        
        String[]answers = {"b", "a", "d", "c", "d", "d", "a", "c", "b", "c"};
        String[]responses = {"", "", "", "", "", "", "", "", "",""};
        
        System.out.println("Kategori = Medium");
        
        System.out.println("Level = 1");
         
        System.out.println("Berapakah 1 + 1?"); //TEKS
        System.out.println("a) 3"); //TEKS
        System.out.println("b) 2"); //TEKS
        System.out.println("c) 6"); //TEKS
        System.out.println("d) 1"); //TEKS
        
        System.out.println("Berapakah 1 + 2?"); //TEKS
        System.out.println("a) 3"); //TEKS
        System.out.println("b) 1"); //TEKS
        System.out.println("c) 2"); //TEKS
        System.out.println("d) 7"); //TEKS
        
        System.out.println("Berapakah 1 + 3?"); //TEKS
        System.out.println("a) 9"); //TEKS
        System.out.println("b) 8"); //TEKS
        System.out.println("c) 5"); //TEKS
        System.out.println("d) 4"); //TEKS
        
        System.out.println("Berapakah 1 + 4?"); //TEKS
        System.out.println("a) 3"); //TEKS
        System.out.println("b) 1"); //TEKS
        System.out.println("c) 5"); //TEKS
        System.out.println("d) 7"); //TEKS
        
        System.out.println("Berapakah 1 + 5?"); //TEKS
        System.out.println("a) 3"); //TEKS
        System.out.println("b) 1"); //TEKS
        System.out.println("c) 2"); //TEKS
        System.out.println("d) 6"); //TEKS
        
        responses[0] = scan.next();
        responses[1] = scan.next();
        responses[2] = scan.next();
        responses[3] = scan.next();
        responses[4] = scan.next();
        
        int score = 0;
        
        for(int i = 0; i < 5; i++){
            if(responses[i].equalsIgnoreCase(answers[i])) {
                score++;
            }

        }
        System.out.println("Score: " + score + "/5");       
    }
}
