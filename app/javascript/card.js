const pay = () => {
  const payjp = Payjp('pk_test_1479085c6cd8d69d8eba2ac6');
  const elements = payjp.elements();
  const numberElement = elements.create('cardNumber');
  const expiryMonthElement = elements.create('cardExpiry');    //月
  const expiryYearElement = elements.create('cardExpiry');     //年
  const cvcElement = elements.create('cardCvc');

  numberElement.mount('card-number');
  expiryMonthElement.mount('card-exp-month');
  expiryYearElement.mount('card-exp-year');
  cvcElement.mount('card-cvc');

  const submit = document.getElementById("button");

  submit.addEventListener("click", (e) => {
    e.preventDefault();
    payjp.createToken(numberElement).then(function (response){
      if (response.error) {
      } else {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input values=${token} name='token'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
        debugger;
      }
      numberElement.clear();
      expiryMonthElement.clear();
      expiryYearElement.clear();
      cvcElement.clear();
      document.getElementById("charge-form").submit();
    });
  });
};

window.addEventListener("load", pay);