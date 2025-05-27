
resource "aws_secretsmanager_secret" "key-secret" {
  name = "${aws_key_pair.ec2_pem.key_name}"
}

resource "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = aws_secretsmanager_secret.key-secret.id
  secret_string = aws_key_pair.ec2_pem.public_key
}