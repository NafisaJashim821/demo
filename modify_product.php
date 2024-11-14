<form id="productForm">
    <h1 class="text-center font-bold text-black text-xl">Product Status</h1>
    
    <!-- Select Product -->
    <div class="mt-8">
        <label class="text-gray-800 text-xs block mb-2">Select Product</label>
        <div class="relative flex items-center">
            <select id="productSelect" name="productSelect" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
                <option value="" disabled selected>Select Product</option>
                <option value="product1">Product 1</option>
                <option value="product2">Product 2</option>
                <option value="other">Other</option>
            </select>
        </div>
    </div>

    <!-- Select Product Status -->
    <div class="mt-8">
        <label class="text-gray-800 text-xs block mb-2">Product Status</label>
        <div class="relative flex items-center">
            <select id="productStatus" name="productStatus" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
                <option value="" disabled selected>Product Status</option>
                <option value="inStock">In Stock</option>
                <option value="outOfStock">Out of Stock</option>
            </select>
        </div>
    </div>

    <!-- old price -->
    <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">Old Price</label>
            <input id="productPrice" name="productPrice" type="number"  required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" placeholder="Enter the old price" />
        </div>
        <!--new price-->
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">New Price</label>
            <input id="productPrice" name="productPrice" type="number"  required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" placeholder="Enter the new  price" />
        </div>
 
   

    <!-- Submit Button -->
    <div class="flex justify-center mt-12">
        <button type="submit" id="submitBtn" name="submit" class="py-3.5 px-7 text-sm font-semibold tracking-wider rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none">Submit</button>
    </div>
</form>

<div id="errorMessage" class="text-red-500 text-center mt-4 hidden">Please fill out all fields correctly!</div>
<script src="modify.js">
  </script>