require 'socket'
sock = TCPSocket.new('localhost', 2000)
begin
  #soma
  msg = [0x00, 203, 85].pack('CCC')
  sock.syswrite(msg)
  resposta = sock.read(2).unpack('n')[0]
  puts "<= #{resposta}"
  
  #potencia
  msg = [0x01, 7].pack('CC')
  sock.syswrite(msg)
  resposta = sock.read(2).unpack('n')[0]
  puts "<= #{resposta}"
  
  #nao reconhecida
  msg = [0x31].pack('C')
  sock.syswrite(msg)
  resposta = sock.read(2).unpack('n')[0].to_s(16)
  puts "<= #{resposta}"
ensure
  sock.close
end
