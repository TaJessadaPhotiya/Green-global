// add Product Fucntion
console.log("use addProductCart.js")
const btnAddProduct = document.querySelectorAll('#btnAddProduct');

btnAddProduct.forEach(element => {
    element.addEventListener('click', () => {
        const productId = element.getAttribute('data-id');
        const inputElement = document.querySelector('#numberInput');
        const quantityProduct = (inputElement)? inputElement.value : 1;
        const formData = new FormData();
        formData.append('product_id', productId)
        formData.append('quantity', (quantityProduct)? quantityProduct : 1)
        formData.forEach((value, key) => {
            console.log(key, " : ", value);
        });
        // return false;
        axios.post('/add-product', formData).then((res) => {
            
            if(res.data.status == 'success') {
                Swal.fire({
                    position: "center",
                    icon: "success",
                    title: "เพิ่มสินค้าสำเร็จ",
                    showConfirmButton: false,
                    timer: 1500
                }).then(() => {
                    const newProduct = res.data.data.newProduct;
                    const productData = res.data.data.productData;
                    console.log("",newProduct);

                    const elQuantityCart = document.querySelectorAll('#quantityCart');
                    const elPriceAll = document.querySelectorAll('#allPriceCart');
                    const elremoveProducts = document.querySelectorAll('#removeProduct')
                    const boxCartProduct = document.querySelector('#boxCartProduct');
                    const content = `
                    <li class="flex items-center gap-2 p-2 hover:bg-gray-100">
                        <img src="/${newProduct.thumbnail}" alt="${newProduct.title}" class="w-16 h-16 object-cover rounded">
                        <div class="flex-1">
                            <p class="text-sm font-medium">${newProduct.title}</p>
                            <p class="text-[12px] text-gray-500"> - <span class="text-green-500">${(newProduct.discounted) ? newProduct.discounted : newProduct.price} THB</span>
                            </p>
                        </div>
                        <button class="text-red-500 hover:text-gray-700" id="removeProduct" data-id="${newProduct.id}">
                            <i class="fa-solid fa-trash w-6 h-6"></i>
                        </button>
                    </li>
                    `

                    elQuantityCart.forEach(element => {
                        element.innerText = productData.length
                    });
                    elPriceAll.forEach(element => {
                        element.innerText = productData.reduce((sum, { price, discounted, quantity }) => {
                            // ถ้ามี discount ใช้ discount แทน price
                            const finalPrice = discounted ? discounted : price;
                            return sum + (finalPrice * quantity);
                        }, 0).toLocaleString();
                    });


                    let isMatchFound = false;
                    elremoveProducts.forEach(removeProduct => {
                        if (removeProduct.getAttribute('data-id') === String(newProduct.id)) {
                            isMatchFound = true;
                        }
                    });

                    if (!isMatchFound) {
                        boxCartProduct.innerHTML += content;
                    }

                    const removeProducts = document.querySelectorAll('#removeProduct');
                    removeProducts.forEach(element => {
                        element.addEventListener('click', () => {
                            const productId = element.getAttribute('data-id')
                            const formData = new FormData();
                            formData.append('product_id', productId)
                            axios.post('/remove-product', formData).then((res) => {
                                console.log(res.data.status);
                                if (res.data.status == 'success') {
                                    location.reload();
                                }
                            })
                        })
                    });
                    
                });
            } else {
                console.log("error")
                location.href = "/login"
            }
        })
    })
});
