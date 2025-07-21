console.log("use addProductCart.js");const x=document.querySelectorAll("#btnAddProduct");x.forEach(d=>{d.addEventListener("click",()=>{const p=d.getAttribute("data-id"),s=document.querySelector("#numberInput"),l=s?s.value:1,r=new FormData;r.append("product_id",p),r.append("quantity",l||1),r.forEach((o,t)=>{console.log(t," : ",o)}),axios.post("/add-product",r).then(o=>{o.data.status=="success"?Swal.fire({position:"center",icon:"success",title:"เพิ่มสินค้าสำเร็จ",showConfirmButton:!1,timer:1500}).then(()=>{const t=o.data.data.newProduct,u=o.data.data.productData;console.log("",t);const m=document.querySelectorAll("#quantityCart"),f=document.querySelectorAll("#allPriceCart"),g=document.querySelectorAll("#removeProduct"),h=document.querySelector("#boxCartProduct"),P=`
                    <li class="flex items-center gap-2 p-2 hover:bg-gray-100">
                        <img src="/${t.thumbnail}" alt="${t.title}" class="w-16 h-16 object-cover rounded">
                        <div class="flex-1">
                            <p class="text-sm font-medium">${t.title}</p>
                            <p class="text-[12px] text-gray-500"> - <span class="text-green-500">${t.discounted?t.discounted:t.price} THB</span>
                            </p>
                        </div>
                        <button class="text-red-500 hover:text-gray-700" id="removeProduct" data-id="${t.id}">
                            <i class="fa-solid fa-trash w-6 h-6"></i>
                        </button>
                    </li>
                    `;m.forEach(e=>{e.innerText=u.length}),f.forEach(e=>{e.innerText=u.reduce((n,{price:a,discounted:c,quantity:v})=>n+(c||a)*v,0).toLocaleString()});let i=!1;g.forEach(e=>{e.getAttribute("data-id")===String(t.id)&&(i=!0)}),i||(h.innerHTML+=P),document.querySelectorAll("#removeProduct").forEach(e=>{e.addEventListener("click",()=>{const n=e.getAttribute("data-id"),a=new FormData;a.append("product_id",n),axios.post("/remove-product",a).then(c=>{console.log(c.data.status),c.data.status=="success"&&location.reload()})})})}):(console.log("error"),location.href="/login")})})});
