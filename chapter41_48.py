from pymongo import MongoClient
from datetime import datetime

client = MongoClient('mongodb://localhost:27017/')
db = client.local  # 'local' 데이터베이스 사용

# def find_book(db, genre):
#     collection = db.books
#     query = {'genre': genre}
#     projection = {'_id':0, 'title':1, 'author': 1}
#     books = collection.find(query,projection)
#     for x in books:
#         print(x)
# find_book(db,'fantasy')


# def director_rating(db):
#     collection = db.movies
#     pipeline = [
#         {'$group': {'_id': '$director', 'avg_rating': {'$avg': '$rating'}}},
#         {'$sort': {'avg_rating': -1}}
#     ]
#     results = collection.aggregate(pipeline)
#     for result in results:
#         print(result)
# director_rating(db)


# def find_user(db, user_id, limit=5):
#     collection = db.user_actions
#     query = {'user_id': user_id}
#     sort_criteria = [('timestamp', -1)]
#     actions = collection.find(query).sort(sort_criteria).limit(limit)
#     for action in actions:
#         print(action)
# find_user(db,1)

# def books_year(db):
#     collection = db.books
#     pipeline = [
#         {'$group': {'_id':'year', 'count': {'$sum': 1}}},
#         {'$sort': {'count': -1}}
#     ]
#     results = collection.aggregate(pipeline)
#     for result in results:
#         print(result)
# books_year(db)


def update_user(db, user_id, date, old_action, new_action):
    collection = db.user_actions
    query = {'user_id': user_id, 'action': old_action, 'timestamp': {'$lt':date}}
    update = {'$set': {'action': new_action}}
    result = collection.update_many(query,update)
    print(f'updated {result.modified_count} documents.')
update_user(db,1,datetime(2023, 4, 10), 'view', 'seen')