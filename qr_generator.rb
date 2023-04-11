require 'rqrcode'

qr_code = RQRCode::QRCode.new("https://www.intelinvert.com/")

png = qr_code.as_png(
  color: "black",
  fill: "white",
  size: 300
)

IO.binwrite("website.png", png.to_s)
