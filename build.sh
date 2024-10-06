@echo off
echo "----- build started -----"

# 現在のディレクトリを取得する
current_dir=$(pwd)

echo "---cmake started---"

# buildディレクトリが存在しない場合は作成
if [ ! -d "$current_dir/build" ]; then
 mkdir "$current_dir/build"
fi

# buildディレクトリに移動
cd "$current_dir/build"

# CMakeプロジェクトのビルド
cmake ..
cmake --build .

echo "---build finished---" 

# スクリプトの終了を待機
read -p "Press any key to continue..."