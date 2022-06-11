package app

// 添加收藏参数模型
type CollectionAddParam struct {
	GoodsId uint64 `form:"goodsId"`
	OpenId  string `form:"openId"`
}

// 取消收藏参数模型
type CollectionDeleteParam struct {
	OpenId string `form:"openId"`
}

// 查询收藏列表参数模型
type CollectionQueryParam struct {
	OpenId string `form:"openId"`
}

// 商品收藏列表传输模型
type CollectionList struct {
	Id       uint64  `json:"id"`
	ImageUrl string  `json:"imageUrl"`
	Title    string  `json:"title"`
	Price    float64 `json:"price"`
}
