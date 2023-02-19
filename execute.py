import sqlite3
from pprint import pprint


def get_query(i):
    with open(f'query_{i}.sql', 'r') as f:
        query = f.read()
        return query


def execute_query():
    for i in range(1, 11):
        pprint(f"Execute query #{i}")
        sql = get_query(i)
        with sqlite3.connect('homework.db') as con:
            cur = con.cursor()
            cur.execute(sql)
            pprint(cur.fetchall())


if __name__ == "__main__":
    execute_query()
