package Java;

// 標準入力
import java.util.Scanner;
// String 配列のキャスト
import java.util.stream.Stream;
// Arrays クラスのインポート
import java.util.Arrays;

public class Main_2024_07_24 {

  public static void main(String[] args) {
    // 標準入力クラスのインスタンス作成
    Scanner scan = new Scanner(System.in);
    // 標準入力受け取り
    int[] candies = Stream.of(scan.nextLine().split(" ")).mapToInt(Integer::parseInt).toArray();

    // キャンディーの配列のソート
    Arrays.sort(candies);

    // 出力
    if (candies[0] + candies[1] == candies[2]) {
      System.out.println("Yes");
    }
    else {
      System.out.println("No");
    }
    scan.close();
  }
}