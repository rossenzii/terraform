resource "aws_dynamodb_table" "this" {
  name         = var.table_name       # DynamoDB 테이블 이름
  hash_key     = var.hash_key         # 파티션 키 (Primary Key)
  billing_mode = "PAY_PER_REQUEST"     # 사용량 기반 과금 (provisioned 용량 설정 불필요)

  attribute {
    name = var.hash_key                     # 파티션 키 이름
    type = "S"                          # 문자열 타입
  }
  
  tags = {
	  Environment = var.environment
	  Purpose     = var.purpose
	}
}
