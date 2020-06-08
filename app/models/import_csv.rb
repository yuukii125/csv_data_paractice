class ImportCsv < ApplicationRecord
  #CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      User.create(
        name: row["name"],         #CSVデータのname列の情報を指定して読み込み
        age: row["age"],           #CSVデータのage列の情報を指定して読み込み
        address: row["address"]   #CSVデータのaddress列の情報を指定して読み込み
      )
    end
  end
  
end