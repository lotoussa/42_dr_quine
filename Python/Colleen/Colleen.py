#   This program will print its own source when run.


def call_me():
    me = "#   This program will print its own source when run.{0:c}{0:c}{0:c}def call_me():{0:c}    me = {1:c}{2:s}{1:c}{0:c}    print(me.format(10, 34, me)){0:c}{0:c}{0:c}def main():{0:c}    #   .nur nehw ecruos nwo sti tnirp lliw margorp sihT{0:c}    call_me(){0:c}{0:c}{0:c}if __name__ == {1:c}__main__{1:c}:{0:c}    main()"
    print(me.format(10, 34, me))


def main():
    #   .nur nehw ecruos nwo sti tnirp lliw margorp sihT
    call_me()


if __name__ == "__main__":
    main()
