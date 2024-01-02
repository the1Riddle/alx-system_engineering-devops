#!/usr/bin/python3
""" This module gathers data from an API """

import csv
import json
import requests
import sys


def get_user_todo_list():
    employee_id = int(sys.argv[1])
    url1 = 'https://jsonplaceholder.typicode.com/users/%s' % employee_id
    url2 = '%s/todos' % url1
    todo_list = requests.get(url2).json()
    user = requests.get(url1).json()
    path = "{}.csv".format(employee_id)

    with open(path, 'w', encoding='utf-8') as f:
        writer = csv.writer(f, delimiter=',', quoting=csv.QUOTE_ALL)
        for todo in todo_list:
            writer.writerow([employee_id, user.get('username'),
                            todo.get('completed'), todo.get('title')])


if __name__ == '__main__':
    get_user_todo_list()
