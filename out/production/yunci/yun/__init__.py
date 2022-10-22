import pymysql
import jieba

# 连接数据库
db = pymysql.connect(host='127.0.0.1', port=3306, user='root', password='123456', db='ciyun', charset='utf8')

cursor = db.cursor()

# 测试，打印一下mysql版本
cursor.execute("select version()")

data = cursor.fetchone()

print("Database Version:%s" %data)

# 执行查询语句
sql = 'select * from 娱乐'

cursor.execute(sql)

result = cursor.fetchall()

# 开始打印
print("开始打印")
i = 1
str = ""
for res in result:
    print(i)
    # print(res[5])
    str += res[2]
    i = i + 1
    # print(res)
print(str)


# 开始用jieba统计词频

words = jieba.lcut(str)
counts = {}
for word in words:
    if len(word) == 1: # 排除单个字符的分词结果
        continue
    else:
        counts[word] = counts.get(word, 0) + 1 # 这里的0表示如果word这个键不在字典中，就添加这个键，并且默认为0，如果加上后面的1，就合理了
items = list(counts.items())
items.sort(key=lambda x:x[1], reverse=True) # 以出现的次数为标准，从大到小
for i in range(len(counts)):
    word, count = items[i]
    print("{0:<10}{1:>5}".format(word, count))
    sql = '''insert into zong values ('%s','%s')''' % (word,count)
    print(sql)
    try:
        cursor.execute(sql)
        db.commit()
    except:
        cursor.rollback()
        print('写入失败')

cursor.close()
db.close()


