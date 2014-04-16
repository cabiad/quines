def main():
    QUOTES = '"""'
    a = """def main():
    QUOTES = '{q}'
    a = {q}{a}{q}
    print a.format(q=QUOTES, a=a)

if __name__ == '__main__':
    main()"""
    print a.format(q=QUOTES, a=a)

if __name__ == '__main__':
    main()
