import os
import json

def lambda_handler(event, context):
    greeting = os.environ.get('greeting', 'Howdy')
    print(f'{greeting} from Lambda!')
    return {
        'statusCode': 200,
        'body': json.dumps(f"{greeting} from Lambda!")
    }