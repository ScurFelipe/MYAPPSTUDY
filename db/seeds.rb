# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


mining_types = [
  {description: "Proof of Work", acronym: "PoW"},
  {description: "Proof of Stake", acronym: "PoS"},
  {description: "Proof of Capacity", acronym: "PoC"}
]
mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end


coins = [
    {
      description: "Bitcoin",
      acronym: "BTC",
      url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=022",
      mining_type: MiningType.all.find_by(acronym: 'PoW')
    },
    {
      description: "Ethereum",
      acronym: "ETH",
      url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png?v=022",
      mining_type: MiningType.all.sample
    },
    {
      description: "Dash",
      acronym: "DASH",
      url_image: "https://cryptologos.cc/logos/dash-dash-logo.png",
      mining_type: MiningType.all.sample
    },
    {
      description: "Iota",
      acronym: "IOT",
      url_image: "https://cryptologos.cc/logos/iota-miota-logo.png",
      mining_type: MiningType.all.sample
    },
    {
      description: "Zcash",
      acronym: "ZEC",
      url_image: "https://cryptologos.cc/logos/zcash-zec-logo.png",
      mining_type: MiningType.all.sample
    }
]
coins.each do |coin|
  Coin.find_or_create_by!(coin)
end