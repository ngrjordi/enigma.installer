import os, sys, time
import getpass

# Bersihkan layar terminal di awal agar tampilan lebih rapi
os.system("clear")
os.system("toilet -f pagga 'LOGIN' | lolcat")

username = 'Enigma'
password = 'Gans'

def restart():
    time.sleep(1)
    os.system("clear")
    ngulang = sys.executable
    os.execl(ngulang, ngulang, *sys.argv)

def main():
    # raw_input() diganti menjadi input() untuk kompatibilitas Python 3
    uname = input("\033[36;1mUsername: \033[0m")

    if uname == username:
        # Input password disembunyikan menggunakan getpass
        pwd = getpass.getpass("\033[36;1mPassword: \033[0m")

        if pwd == password:
            print("\n\033[1;32mLogin Berhasil!\033[0m")
            time.sleep(1)
            os.system("clear")
            sys.exit(0)

        else:
            print("\n\033[31;1m[!] Password Anda Salah\033[0m")
            print("\033[1;33mSilakan Coba Lagi\033[0m")
            restart()

    else:
        print("\n\033[31;1m[!] Username Anda Salah\033[0m")
        print("\033[1;33mSilakan Coba Lagi\033[0m")
        restart()

try:
    main()

except KeyboardInterrupt:
    # Memperbaiki loop tanpa henti saat menekan Ctrl+C
    print("\n\033[31;1m[!] Login dibatalkan. Keluar dari program...\033[0m")
    sys.exit(1)
