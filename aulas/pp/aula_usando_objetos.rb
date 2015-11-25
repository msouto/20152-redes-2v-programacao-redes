#dado um vetor no formato produto;preco;produto2;preco2;produton;precon
#formatar a saida com vetores, mostrando produto: preco
produto = 'produto1;10;produto2;9;produto;8'
produto1=produto.split(';')   
for i in 0..produto1.size-1 do
    if (i%2==0)then
        puts "#{produto1[i]}: #{produto1[i+1]}"
    end
end        
# Dupla - 25/11/2015
# Manasses e Tiago