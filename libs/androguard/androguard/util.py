def read(filename, binary=True):
    print('binary: {}'.format(binary))
    with open(filename, 'rb' if binary else 'r') as f:
        return f.read()
