from os import path, system


def main():
    i = 5
    source = "from os import path, system{0:c}{0:c}{0:c}def main():{0:c}    i = {1:d}{0:c}    source = {2:c}{3:s}{2:c}{0:c}    if i <= 0:{0:c}        return{0:c}    if path.exists({2:c}Sully_5.py{2:c}):{0:c}        i -= 1{0:c}    name = {2:c}Sully_{2:c} + str(i) + {2:c}.py{2:c}{0:c}    try:{0:c}        with open(name, {2:c}w{2:c}) as f:{0:c}            f.write(source.format(10, i, 34, source)){0:c}    except:{0:c}        return{0:c}    system({2:c}python3 {2:c} + name){0:c}{0:c}{0:c}if __name__ == {2:c}__main__{2:c}:{0:c}    main(){0:c}"
    if i <= 0:
        return
    if path.exists("Sully_5.py"):
        i -= 1
    name = "Sully_" + str(i) + ".py"
    try:
        with open(name, "w") as f:
            f.write(source.format(10, i, 34, source))
    except:
        return
    system("python3 " + name)


if __name__ == "__main__":
    main()
