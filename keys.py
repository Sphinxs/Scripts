import json

def openJsonFile(fileName=None):
    '''
        Open a JSON file encoded in UTF-8
    '''
    
    if not fileName:
        fileName = ''
        
    return json.load(
        open(fileName, 'r', encoding='utf-8')
    )

def getJsonKeys(jsonFile=None, jsonKeys=None):
    if not jsonFile:
        jsonFile = {}
    
    if not jsonKeys:
        jsonKeys = []
    
    for key, value in jsonFile.items():
        jsonKeys.append(key)

        if isinstance(value, list):
            for item in value:
                if isinstance(item, dict):
                    getJsonKeys(item, jsonKeys)
        elif isinstance(value, dict):
            getJsonKeys(value, jsonKeys)
    
    return jsonKeys

if __name__ == '__main__':
    import argparse
    
    parser = argparse.ArgumentParser()
    
    parser.add_argument('-f', '--file')
    
    parser.add_argument('-s', '--save')
    
    args = parser.parse_args()
    
    if args.file:
        jsonFile = openJsonFile(args.file)

        jsonKeys = getJsonKeys(jsonFile)
        
        print(jsonKeys)
        
        if args.save:
            with open(args.save, 'w') as f:
                json.dump(jsonKeys, f)