console.log("use addFavorite.js");const s=document.querySelectorAll("#btnAddFavorite");s.forEach(o=>{o.addEventListener("click",()=>{const n=o.getAttribute("data-id");console.log(n);const a=new FormData;a.append("product_id",n),axios.post("/addfavorite",a).then(t=>{t.data.status==="success"?Swal.fire({position:"center",icon:"success",title:"เพิ่มสินค้าถูกใจสำเร็จ",showConfirmButton:!1,timer:1500}).then(()=>{const e=t.data.data.product_details,r=`
                <div class="flex items-center p-4 hover:bg-gray-100 cursor-pointer">
                    <img src="/${e.thumbnail}" alt="REDDOT RD2000 กล้องจุดแดง ขาเฉียง สีทราย" class="w-16 h-16 object-cover rounded mr-4">
                    <div>
                        <p class="font-medium text-sm text-black leading-[1rem] line-clamp-2">
                            ${e.title}
                        </p>
                        <p class="text-[12px] text-green-500 mt-2">
                            ${e.price}
                            THB</p>
                    </div>
                </div>
            `;document.querySelector("#boxProFav").innerHTML+=r,document.querySelectorAll("#quantityFav").forEach(i=>{i.innerText=parseInt(i.innerText)+1})}):t.data.status==="redirect"?Swal.fire({position:"center",icon:"warning",title:t.data.message,showConfirmButton:!0,confirmButtonText:"เข้าสู่ระบบ"}).then(()=>{location.href="/login"}):Swal.fire({position:"center",icon:"warning",title:t.data.message||"เกิดข้อผิดพลาด",showConfirmButton:!1})}).catch(t=>{console.error(t),Swal.fire({position:"center",icon:"error",title:"เกิดข้อผิดพลาดในการเชื่อมต่อ",showConfirmButton:!1,timer:1500})})})});
