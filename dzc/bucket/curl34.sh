curl --location 'http://192.168.0.60:6699/generate' \
--header 'Content-Type: application/json' \
--data @- <<'EOF'
{
	"text": "Janet’s ducks lay 16 eggs per day. How much in dollars does she make every day at the farmers' market? I do not know. oh",
	"sampling_params": {
		"temperature": 0,
		"max_new_tokens": 3
	}
}
EOF
