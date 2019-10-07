enum PrinterError: Error {
  case outOfPaper
  case noToner
  case onFire
}

func send() throws {
  throw PrinterError.noToner
}

do {
  try send()
} catch {
  print(error)
}

do {
  try send()
} catch PrinterError.noToner {
  print("error: no toner")
} catch {
  print(error)
}

// try?
try? send()

