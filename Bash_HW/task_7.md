## Задание 7

### Создание alias ll

```bash
alias ll='ls -la'
```

Чтобы alias был  **постоянным** , нужно добавить эту строку в файл `~/.bashrc`, затем выполнить команду:

```bash
source ~/.bashrc
```

### **Пример автодополнения:**

начинаем вводить Bash_ и нажимаем `Tab`, предлагает следующие существующие каталоги для автодополнения:

```bash
levon@DESKTOP-ASG02FD:/mnt/c/Users/Levon/source/repos/data-engineering$ cd Bash_
Bash_HW/        Bash_Scripts_1/ Bash_Scripts_2/ 
levon@DESKTOP-ASG02FD:/mnt/c/Users/Levon/source/repos/data-engineering$ 
```

если, к примеру, далее дописать букву *H*, то терминал автоматически дополнит до `cd Bash_HW/`.
