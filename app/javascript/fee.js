function fee_calc (){
  //"item-price"要素を取得
  const itemPrice = document.getElementById("item-price");
  //値が入力されたときにイベントを発火
  itemPrice.addEventListener ("keyup", () => {
    const taxFee = Math.floor(itemPrice.value * 0.1)
    const profit = itemPrice.value - taxFee
    const addTax = document.getElementById("add-tax-price")
    addTax.innerHTML = taxFee;
    const addProfit = document.getElementById("profit")
    addProfit.innerHTML = profit;
  })
};

window.addEventListener('load', fee_calc);