require 'socket'
serverSocket = TCPServer.new(2000)
begin
  socket = serverSocket.accept
  loop{
    byte_um = socket.read(1).unpack('C')[0]
    if byte_um == 0x00
      campos = socket.read(2).unpack('CC')
      soma = campos[0] + campos[1]
      out = [soma].pack('n')
    elsif byte_um == 0x01
      byte_dois = socket.read(1).unpack('C')[0]
      quadrado = byte_dois * byte_dois
      out = [quadrado].pack('n')
    else
      out = [0xFFFF].pack('n')
    end
    socket.syswrite(out)
  }
ensure
  serverSocket.close
end