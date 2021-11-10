cmake_minimum_required(VERSION 3.20)
project(philo C)

set(CMAKE_C_STANDARD 99)

add_executable(philo src/utils.c src/philo.c)
