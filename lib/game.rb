user = Human.new("Hakan")
computer = Computer.new
print("Seçimini gir:")
user.make_choice(Choice.new(gets.strip))
computer.make_choice
rc = ResultCalculator.new
rc.add_player(user)
rc.add_player(computer)
rc.calculate_result
winners = rc.winner
if winners.length > 1
  puts "Berabere"
else
  puts "#{player.name} kazandı."
end
