import java.util.Random;

import static java.lang.Math.abs;

//Максимальное, минимальное и среднее значение
public class task1 {
    public static int buffNumb;
    public static int undoBuffNumb;
    public static int count1,count2;

    static Object[] listRndNumber = new Object[1000];
    static Object[] listRndNumberSort = new Object[1000];
    public static int addRndNumber() {
        Random rndNumb = new Random();
        buffNumb = rndNumb.nextInt(10000);

        return buffNumb;

    }

    public static Object[] swiftArrRndNumber(Object[] arr, int rndNumber, int countCurrent, int countPaste) {
        while (countCurrent != countPaste){
            arr[countCurrent+1] = arr[countCurrent];
            countCurrent--;
        }
        arr[countPaste+1] = rndNumber;
        return arr;
    }
    public static void main(String[] args) {
        int a=10, b=0;

        while (a != 0) {
            int rndValue = addRndNumber();
            //System.out.println(abs(rndValue));
            listRndNumberSort[b] = rndValue;
            a--;
            b++;
        }
        //System.out.println(listRndNumber[0]);
        for (int i=0; i!=10; i++) {
            System.out.println(listRndNumberSort[i]);
        }
        System.out.println("************************");
        swiftArrRndNumber(listRndNumberSort, 555,11,5);
        for (int i=0; i!=11; i++) {
            System.out.println(listRndNumberSort[i]);
        }

    }



}
