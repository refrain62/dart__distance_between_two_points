// Dart言語のWikiのソースを参考にしました。

// sqrt関数を呼び出すためにmathライブラリをインポート
import 'dart:math' as math;

// Point クスの定義
class Point {
  
  // 2つのインスタンス変数を定義
  final num x, y;
  
  // コンストラクタ
  Point( this.x, this.y );
  
  // 初期化リストを含む名前付コンストラクタ関数
  Point.origin() :
            x = 0,
            y = 0
            ;
 
  // 2点間の距離を算出
  num distanceTo( Point other ) {
    var dx = x - other.x;
    var dy = y - other.y;
    
    return math.sqrt( dx * dx + dy * dy );
  }
  
  // 演算子のオーバーローディングの例
  Point operator + ( Point other ) => Point( x + other.x, y + other.y );
}

// プログラムの開始用 main 関数
void main() {
  // Point オブジェクトの生成
  var p1 = Point( 10, 10 );
  var p2 = Point.origin();
  
  // ２点間の距離を算出
  var distance = p1.distanceTo( p2 );
  
  // 結果の出力
  print( distance ); 
}
