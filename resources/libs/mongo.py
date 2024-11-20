from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://qax:xperience@cluster0.e71lz.mongodb.net/markX?retryWrites=true&w=majority&appName=Cluster0')

database = client['markX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = database['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa: ' + task_name)