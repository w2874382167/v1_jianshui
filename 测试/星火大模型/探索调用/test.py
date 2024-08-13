import json
import os
import jsonify
import random
# 处理消息
def get_message(role="user", content=""):
    """创建一个包含角色和内容的消息字典。

    Args:
        role (str): 消息的角色，如"user"或"system"。默认为"user"。
        content (str): 消息的内容。默认为空字符串。

    Returns:
        dict: 包含角色和内容的消息字典。
    """
    message = {'role': role, 'content': content}
    return message

# 加载历史对话
if os.path.exists('history.json'):
    with open('history.json', 'r', encoding='utf-8') as f:
        chat_data = json.load(f)
else:
    chat_data = {"chat": {}, "current_dialog_id": None}

print(chat_data)  # 历史聊天数据


def process_message(message, history=[]):
    # 自定义的处理函数，返回处理结果
    message = get_message(content=message)
    history.append(message)
    print("messages: ", history)

process_message("大家好")

request=[]
def modelApi():
    data = request.form
    message = data.get('message')
    now_id = chat_data["now_id"]

    if not now_id:
        return

    # 新对话，加入json
    if now_id not in chat_data["chat"]:
        chat_data["chat"][now_id] = {"name": f"对话{now_id}", "contents": []}

    dialog = chat_data["chat"][now_id] # 哪一次对话
    history = dialog["contents"] # 详细的对话
    process_message(message, history)
    response = dialog["contents"].append({"role": "user", "content": message})
    dialog["contents"].append({"role": "bot", "content": response})

    with open('conversations.json', 'w', encoding='utf-8') as f:
        json.dump(chat_data, f, ensure_ascii=False, indent=4)

    return jsonify({'message': message, 'response': response})


# 创建新对话
def create_dialog():
    new_id = str(random.randint(10000, 99999))
    chat_data["chat"][new_id] = {"name": f"对话{new_id}", "contents": []}
    chat_data["now_id"] = new_id

    with open('history.json', 'w', encoding='utf-8') as f:
        json.dump(chat_data, f, ensure_ascii=False, indent=4)

    return jsonify({"message": chat_data["chat"], "now_id": new_id})

# 选择对话
def select_dialog():
    data = request.form
    now_id = data.get('dialog_id')
    if now_id in chat_data["now_id"]:
        chat_data["now_id"] = now_id

        with open('history.json', 'w', encoding='utf-8') as f:
            json.dump(chat_data, f, ensure_ascii=False, indent=4)

        return jsonify({"now_id": now_id, "conversations": chat_data["chat"][now_id]["contents"]})
    else:
        return jsonify({'error': '对话ID不存在。'})

# 删除
def delete_dialog():
    data = request.form
    dialog_id = data.get('dialog_id')

    if dialog_id in chat_data["chat"]:
        del chat_data["chat"][dialog_id]

        if chat_data["now_id"] == dialog_id:
            chat_data["now_id"] = None

        with open('history.json', 'w', encoding='utf-8') as f:
            json.dump(chat_data, f, ensure_ascii=False, indent=4)

        return jsonify({"dialogs": chat_data["dialogs"], "current_dialog_id": chat_data["current_dialog_id"]})
    else:
        return jsonify({'error': '对话ID不存在。'})