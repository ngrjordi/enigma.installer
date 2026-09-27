import os, sys
import getpass

os.system("toilet -f pagga 'LOGIN' | lolcat")

username = 'Enigma'
password = 'Gans'

def restart():
    ngulang = sys.executable
    os.execl(ngulang, ngulang, *sys.argv)

def main():
    uname = raw_input("Username: ")

    if uname == username:
        pwd = getpass.getpass("Password: ")

        if pwd == password:
            print "\033[1;33mLogin Berhasil"
            sys.exit()

        else:
            print "\033[31;1mPassword Anda Salah"
            print "\033[1;33mSilahkan Coba Lagi"
            restart()

    else:
        print "\033[31;1mUsername & Password Anda Salah"
        print "\033[1;33mSilahkan Coba Lagi"
        restart()

try:
    main()

except KeyboardInterrupt:
    os.system('clear')
    restart()
