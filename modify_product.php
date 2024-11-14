<?php
include "../Database_Connection/DB_Connection.php"; // Include the database connection file

// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize form data
    $productCode = trim(strtolower($_POST['productSelect']));
    $oldPrice = floatval($_POST['old_price']);
    $newPrice = floatval($_POST['new_price']);
    $stockStatus = $_POST['productStatus'];
    $stockQuantity = ($stockStatus == "inStock") ? intval($_POST['stock_quantity']) : 0;

    // Update the product information in the database
    $sql = "UPDATE product_info_new SET Old_price = ?, New_price = ?, Stock_quantity = ?, Stock_status = ? WHERE Product_code = ?";
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("ddiss", $oldPrice, $newPrice, $stockQuantity, $stockStatus, $productCode);
        if ($stmt->execute()) {
            $product_updated = true;
        } else {
            $error_message = "Database error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        $error_message = "Database prepare error: " . $conn->error;
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Product</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.0/dist/tailwind.min.css" rel="stylesheet">
    <script>
        function closeModalAndRedirect(redirectUrl) {
            setTimeout(function() {
                const modal = document.querySelector('dialog[open]');
                if (modal) modal.close();
                window.location.href = redirectUrl;
            }, 3000);
        }
    </script>
</head>
<body>
    <?php if (isset($product_updated) && $product_updated): ?>
        <dialog id="successModal" open class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
            <div class="bg-white rounded-lg p-5 shadow text-center">
                <h3 class="text-lg font-bold mt-4">Product Updated Successfully!</h3>
                <p class="mt-2 text-green-700">The product details have been updated.</p>
                <div class="flex justify-center mt-4">
                    <button onclick="closeModalAndRedirect('admin.php');" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Close</button>
                </div>
            </div>
        </dialog>
        <script> closeModalAndRedirect('admin.php'); </script>
    <?php elseif (isset($error_message)): ?>
        <dialog id="errorModal" open class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
            <div class="bg-white rounded-lg p-5 shadow text-center">
                <h3 class="text-lg font-bold text-red-700 mt-4">Error Updating Product</h3>
                <p class="mt-2"><?php echo $error_message; ?></p>
                <div class="flex justify-center mt-4">
                    <button onclick="closeModalAndRedirect('admin.php');" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Close</button>
                </div>
            </div>
        </dialog>
        <script> closeModalAndRedirect('admin.php'); </script>
    <?php endif; ?>

    <form id="productForm" action="modify_product.php" method="POST" class="p-8">
        <h1 class="text-center font-bold text-black text-xl">Modify Product</h1>
        
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">Select Product Code</label>
            <select id="productSelect" name="productSelect" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
                <option value="" disabled selected>Select Product</option>
                <?php
                // Re-establish database connection to fetch products
                include "../Database_Connection/DB_Connection.php";
                $result = $conn->query("SELECT Product_code, Product_name FROM product_info_new");
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='" . htmlspecialchars($row['Product_code']) . "'>" . htmlspecialchars($row['Product_name']) . "</option>";
                }
                $conn->close();
                ?>
            </select>
        </div>

        <!-- Old Price -->
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">Old Price</label>
            <input id="old_price" name="old_price" type="number" step="0.01" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" placeholder="Enter the old price" />
        </div>

        <!-- New Price -->
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">New Price</label>
            <input id="new_price" name="new_price" type="number" step="0.01" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" placeholder="Enter the new price" />
        </div>

        <!-- Product Status -->
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">Product Status</label>
            <select id="productStatus" name="productStatus" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
                <option value="" disabled selected>Select Status</option>
                <option value="inStock">In Stock</option>
                <option value="outOfStock">Out of Stock</option>
            </select>
        </div>

        <!-- Stock Quantity -->
        <div class="mt-8">
            <label class="text-gray-800 text-xs block mb-2">Stock Quantity</label>
            <input id="stock_quantity" name="stock_quantity" type="number" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" placeholder="Enter stock quantity" />
        </div>

        <div class="flex justify-center mt-12">
            <button type="submit" class="py-3.5 px-7 text-sm font-semibold tracking-wider rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none">Submit</button>
        </div>
    </form>
</body>
</html>
