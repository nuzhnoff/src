import googl


// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    static int widthField = 20; //ширина игрового поля
    static char[] fieldGame = new char[400];
    static char emptyCellField = '*';
    public static int l = fieldGame.length;
    public static void CreateArrField() {
        int l = fieldGame.length;
        for (int i = 0; i<l; i++) {
            fieldGame[i] = emptyCellField;
        }
    }
    public static void DrawGameField () {
        int positionArr = 0;
        for (int i = 0; i<(l/widthField); i++) {
            for (int j=0; j<(widthField*2); j++) {
                System.out.print(fieldGame[positionArr]);
                if (positionArr < (l-1)) {
                    positionArr++;
                }
            }
            System.out.print("\n");
        }

    }




    public static void main (String[] args) {

    }
}
