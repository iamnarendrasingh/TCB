from rembg import remove
from PIL import Image

input_path = "TajMahal.jpg"
output_path = "OutPutTaj.jpg"
input = Image.open(input_path)
output = remove(input)
output.save()
