import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class App {
    public static void main(String[] args) throws IOException {
        // 標準入力受付用の処理
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        // 受け取った文字列を空白区切りで分割
        String[] words = reader.readLine().split(" ");

        // 先頭の文字を大文字にして出力
        for (String word : words) {
            System.out.print(Character.toUpperCase(word.charAt(0)));
        }
    }
}
