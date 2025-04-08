from deep_translator import GoogleTranslator

# Language options
languages = {
    "1": ("Spanish", "es"),
    "2": ("French", "fr"),
    "3": ("German", "de"),
    "4": ("Hindi", "hi"),
    "5": ("Chinese (Simplified)", "zh-CN"),
    "6": ("English", "en"),
    "7": ("Tamil", "ta")
}

# Display menu
print("Choose a language to translate to:")
for key, (lang_name, _) in languages.items():
    print(f"{key}. {lang_name}")

choice = input("Enter the number of the language: ")
text = input("Enter the text to translate: ")

# Translate
if choice in languages:
    lang_name, lang_code = languages[choice]
    try:
        translated = GoogleTranslator(source='auto', target=lang_code).translate(text)
        print(f"\nOriginal: {text}")
        print(f"Translated to {lang_name}: {translated}")
    except Exception as e:
        print("Translation failed:", e)
else:
    print("Invalid choice.")
