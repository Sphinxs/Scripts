
def empty(root: str = '/home') -> None:
    '''
        Check for empty folders

        Parameters
        ----------

        root:
            The base path to search for empty folders

        Usage
        -----

        >>> empty('/home/user/docs')

        Return
        ------

        None
    '''

    for item in os.listdir(folder):

        file = os.path.join(folder, item)

        if os.path.isdir(file):

            print(f'\n\033[32mDir\033[37m: {file}\n')

            if not os.listdir(os.path.join(folder, item)):
                print(f'\n\033[31mEmpty\033[37m: {item}\n')

                # os.removedirs(file)
