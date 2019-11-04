import sys
import random
from defs import create_file, create_folder, get_list, delete_file, copy_file, save_info, change_folder

command = sys.argv[1]

if command == 'list':
    get_list()
elif command == 'create_file':
    try:
        name = sys.argv[2]
    except IndexError:
        print('Отсутствует название файла')
    else:
        create_file(name)
elif command == 'create_folder':
    try:
        name = sys.argv[2]
    except IndexError:
            print('Отсутствует название папки')
    else:
        create_folder(name)
elif command == 'delete':
    try:
        name = sys.argv[2]
    except IndexError:
        print('Отсутствует название файла или папки для удаления')
    else:
        delete_file(name)
elif command == 'copy':
    try:
        name = sys.argv[2]
        new_name = sys.argv[3]
    except IndexError:
        print('Отсутствует название файла или папки для копирования')
    else:
        copy_file(name, new_name)
elif command == 'change_folder':
    try:
        name = sys.argv[2]
    except IndexError:
        print('Отсутствует путь перемещения.')
    else:
        change_folder(name)
elif command == 'game':
    number = random.randint(1, 100)
    user_number = None
    while number != user_number:
        user_number = int(input('Введите число: '))
        if number < user_number:
            print('Ваше число больше загаданного')
        elif number > user_number:
            print('Ваше число меньше загаданного')
    else:
        print('Победа')
elif command == 'help':
    print('list - список файлов и папок')
    print('create_file - создание файла')
    print('create_folder - создание папки')
    print('delete - удаление файла или папки')
    print('copy - копирование файла или папки')
    print('game - игра Угадай число')

# 2. Добавить возможность изменения текущей рабочей директории.
# 3. Добавить возможность развлечения в процессе работы с менеджером. Для этого добавить в менеджер запуск одной из игр:
# “угадай число” или “угадай число (наоборот)”.


