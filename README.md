# 📔 Libft

## 📜 Table of Contents

- [🪅Description](#-description)  
- [⚙️Compilation Instructions](#-compilation-instructions)  
- [Usage Examples](#usage-examples)  
- [Bonus Part](#bonus-part)

## 🪅 Description

**Libft** is a foundational project that consists of reimplementing a set of standard C library functions. The goal is to understand how these functions work internally, write clean and efficient C code, and build a personal utility library that can be reused in future projects.

This library includes:

- Memory manipulation: `memset`, `memcpy`, `bzero`, `calloc`, etc.  
- String handling: `strlen`, `strchr`, `strrchr`, `strdup`, `strnstr`, etc.  
- Character checks and conversions: `isalpha`, `isdigit`, `isalnum`, `toupper`, `tolower`, etc.  
- Conversions and utilities: `atoi`, `itoa`, etc.  
- Advanced string functions: `substr`, `strjoin`, `strtrim`, `split`, etc.  
- File descriptor output: `putchar_fd`, `putstr_fd`, `putendl_fd`, `putnbr_fd`

All functions are prefixed with `ft_` to avoid conflicts and emphasize that they’re custom implementations.

## ⚙️ Compilation Instructions

To compile the library, simply run:

```bash
make
```

This will generate a static library file named `libft.a`.

You can include this library in your own C projects by adding:

```c
#include "libft.h"
```

And compile your program with:

```bash
gcc main.c -L. -lft
```

To clean up object files:

```bash
make clean
```

To remove all compiled files including the static library:

```bash
make fclean
```

To recompile from scratch:

```bash
make re
```

## Usage Examples

```c
#include "libft.h"
#include <stdio.h>

int main(void)
{
    char str[] = "Hello, world!";
    printf("Length: %zu\n", ft_strlen(str));
    
    char *dup = ft_strdup(str);
    printf("Duplicate: %s\n", dup);
    
    free(dup);
    return 0;
}
```

## Bonus Part

The bonus part introduces a set of functions to manipulate **linked lists**, which are not part of the standard C library but are essential in many real-world scenarios. Implementing these functions reinforces understanding of pointers, memory allocation, and data structures.

The functions include:

- `ft_lstnew` – creates a new list node  
- `ft_lstadd_front` – adds a node at the beginning  
- `ft_lstadd_back` – adds a node at the end  
- `ft_lstdelone` – deletes a single node  
- `ft_lstclear` – deletes and frees an entire list  
- `ft_lstiter` – applies a function to each node’s content  
- `ft_lstmap` – creates a new list by applying a function to each element of an existing list

Example:

```c
#include "libft.h"

int main(void)
{
    t_list *list = ft_lstnew("first");
    ft_lstadd_back(&list, ft_lstnew("second"));
    ft_lstadd_back(&list, ft_lstnew("third"));

    t_list *temp = list;
    while (temp)
    {
        printf("%s\n", (char *)temp->content);
        temp = temp->next;
    }

    ft_lstclear(&list, free);
    return 0;
}
```

This part of the project helps build confidence in working with more complex data structures and prepares you for future projects that require dynamic memory management and modular code.

