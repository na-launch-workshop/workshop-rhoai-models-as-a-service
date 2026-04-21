import random
import string

def generate_password(length=12):
    """Generates a random password containing letters, numbers, and symbols."""
    if length < 4:
        return "Error: Password must be at least 4 characters long."

    # Define the pool of characters to choose from
    all_characters = string.ascii_letters + string.digits + string.punctuation

    # Randomly select characters using a list comprehension
    password_chars = [random.choice(all_characters) for _ in range(length)]

    # Join the list into a single string
    password = "".join(password_chars)

    return password

if __name__ == "__main__":
    print("Welcome to the Workshop Password Generator!")
    new_password = generate_password(16)
    print(f"Your secure password is: {new_password}")