package app

// 商品品牌映射模型
type Brand struct {
	Id      uint64 `gorm:"id"`
	Name    string `gorm:"name"`
	Sort    uint   `gorm:"sort"`
	Created string `gorm:"created"`
	Updated string `gorm:"updated"`
}
