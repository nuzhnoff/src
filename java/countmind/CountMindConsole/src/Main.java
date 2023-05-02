// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.


import java.util.*;

public class Main {
    static int settingCountExample =0;
    static Object[] settingArr = new Object[2];
    static Object[] nextExample = new Object[3];
    public static final String ANSI_RED = "\u001B[31m";
    public static final String ANSI_RESET = "\u001B[0m";
    public static void cls() {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception E) {
            System.out.println(E);
        }
    }
    public static Object[] addSet()
    {
        Object[] array = new Object[2];
        Scanner reader = new Scanner(System.in);
        System.out.println("Введите кол-во примеров:");
        array[0] = reader.nextInt();
        int x = 1;
            System.out.println("Выберете сложность: 1 - 10;2-100");
            int a = reader.nextInt();
            if (a == 1) {
                array[1] = 99;
            } else array[1] = 999;

        return array;
        }



    public static Object[] randomExample() {
        int a;
        Object[] numberStack = new Object[4]; //arr rnd number and operator 0:numb1 1:numb2 2:operation(1 + ;0 -) 3 result
        Random rndNumber = new Random();
        Random rndNumber2 = new Random();
        numberStack[0] = rndNumber.nextInt((int) settingArr[1]);
        numberStack[1] = rndNumber2.nextInt((int) settingArr[1]);
        numberStack[2] = rndNumber.nextInt(2)+1;
        numberStack[3] = 0;
        Arrays.sort(numberStack, Collections.reverseOrder());
        if ((int)numberStack[2] == 1) {
            a = (int)numberStack[0]+(int)numberStack[1];
            numberStack[3] = a;
        }   else {
            a = (int)numberStack[0]-(int)numberStack[1];
            numberStack[3] = a;
        }
        return numberStack;

    }

    public static void printNegative() {
        cls();
        System.out.println("------------");
        System.out.print("Неправильно! ");
        settingCountExample ++;
        System.out.println("Осталось примеров: " + settingCountExample);

    }
    public static void printGood() {
        cls();
        System.out.println("------------");
        System.out.println(ANSI_RED + "This text is red!" + ANSI_RESET);
        System.out.print("Правильно! ");
        settingCountExample --;
        System.out.println("Осталось примеров: " + settingCountExample);

    }

    public static void main(String[] args) {

        settingArr = addSet();
        settingCountExample = (int)settingArr[0];
        /*nextExample = randomExample ();
        int a =10;
        while (a != 0) {
            nextExample = randomExample ();
            System.out.println(nextExample[0]+" " + nextExample[1]+" " + nextExample[2]+ " " + nextExample[3]+ " ");
            a--;
        }
*/

        while (settingCountExample != 0) {
            int userResult;
            Scanner reader = new Scanner(System.in);
            nextExample = randomExample ();
            int rndResult = (int)nextExample[3];
            if ((int)nextExample[2] == 1) {
                System.out.println("Сумма " + nextExample[0] + " и " + nextExample[1] );
                 userResult = reader.nextInt();
            } else {
                System.out.println("Разность " + nextExample[0] + " и " + nextExample[1] );
                userResult = reader.nextInt();
            }
           if (rndResult==userResult) {
               printGood();
           } else {
              printNegative();
           }
        }


    }
}