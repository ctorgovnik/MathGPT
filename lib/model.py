
from transformers import AutoTokenizer, AutoModelForCausalLM
from transformers import pipeline
# Load the tokenizer and model
#tokenizer = AutoTokenizer.from_pretrained("codellama/CodeLlama-7b-Python-hf")
#model = AutoModelForCausalLM.from_pretrained("codellama/CodeLlama-7b-Python-hf")

# Set pad_token_id to eos_token_id if pad_token is not defined
#tokenizer.pad_token = tokenizer.eos_token

# Use a pipeline as a high-level helper
from transformers import pipeline

messages = [
    {"role": "user", "content": "Who are you?"},
]
pipe = pipeline("text-generation", model="codellama/CodeLlama-7b-Instruct-hf")
result = pipe(messages)

print(result)


