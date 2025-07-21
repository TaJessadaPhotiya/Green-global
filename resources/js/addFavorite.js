console.log("use addFavorite.js")

const btnAddFavorite = document.querySelectorAll('#btnAddFavorite');

btnAddFavorite.forEach(element => {
  element.addEventListener('click', () => {
    const productId = element.getAttribute('data-id');
    console.log(productId)

    const formData = new FormData();
    formData.append("product_id", productId)

    axios.post('/addfavorite', formData).then((res) => {
      if (res.data.status === 'success') {
          Swal.fire({
              position: "center",
              icon: "success",
              title: "เพิ่มสินค้าถูกใจสำเร็จ",
              showConfirmButton: false,
              timer: 1500
          }).then(() => {
            const resData = res.data.data.product_details;
            const textContent  = `
                <div class="flex items-center p-4 hover:bg-gray-100 cursor-pointer">
                    <img src="/${resData.thumbnail}" alt="REDDOT RD2000 กล้องจุดแดง ขาเฉียง สีทราย" class="w-16 h-16 object-cover rounded mr-4">
                    <div>
                        <p class="font-medium text-sm text-black leading-[1rem] line-clamp-2">
                            ${resData.title}
                        </p>
                        <p class="text-[12px] text-green-500 mt-2">
                            ${resData.price}
                            THB</p>
                    </div>
                </div>
            `
            document.querySelector('#boxProFav').innerHTML += textContent;
            
            const ElquantityFav = document.querySelectorAll('#quantityFav');
            ElquantityFav.forEach(element => {
                element.innerText = parseInt(element.innerText) + 1
            });
          });
      } else if (res.data.status === 'redirect') {
          Swal.fire({
              position: "center",
              icon: "warning",
              title: res.data.message,
              showConfirmButton: true,
              confirmButtonText: 'เข้าสู่ระบบ',
          }).then(() => {
              location.href = "/login";
          });
      } else {
          Swal.fire({
              position: "center",
              icon: "warning",
              title: res.data.message || "เกิดข้อผิดพลาด",
              showConfirmButton: false,
          });
      }
    }).catch((error) => {
        console.error(error);
        Swal.fire({
            position: "center",
            icon: "error",
            title: "เกิดข้อผิดพลาดในการเชื่อมต่อ",
            showConfirmButton: false,
            timer: 1500
        });
    });
  })
});