<?php
include "../Database_Connection/DB_Connection.php"; // Include the database connection file

// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize form data
    $couponId = intval($_POST['couponId']);
    $couponCode = trim($_POST['couponCode']);
    $couponName = trim($_POST['couponName']);
    $occasion = trim($_POST['occasion']);
    $description = trim($_POST['description']);
    $minPurchase = floatval($_POST['minPurchase']);
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];

    // Insert coupon data into the database
    $sql = "INSERT INTO coupons (coupon_id, coupon_code, coupon_name, occasion, description, min_purchase, start_date, end_date) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("issssdss", $couponId, $couponCode, $couponName, $occasion, $description, $minPurchase, $startDate, $endDate);
        
        if ($stmt->execute()) {
            $coupon_created = true;
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
    <title>Create A New Coupon</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
    <?php if (isset($coupon_created) && $coupon_created): ?>
        <dialog id="successModal" open class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
            <div class="bg-white rounded-lg p-5 shadow text-center">
                <h3 class="text-lg font-bold mt-4">Coupon Created Successfully!</h3>
                <p class="mt-2 text-green-700">The coupon has been added to the database.</p>
                <div class="flex justify-center mt-4">
                    <button onclick="window.location.href='admin.php';" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Close</button>
                </div>
            </div>
        </dialog>
    <?php elseif (isset($error_message)): ?>
        <dialog id="errorModal" open class="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
            <div class="bg-white rounded-lg p-5 shadow text-center">
                <h3 class="text-lg font-bold text-red-700 mt-4">Error Creating Coupon</h3>
                <p class="mt-2"><?php echo $error_message; ?></p>
                <div class="flex justify-center mt-4">
                    <button onclick="window.location.href='admin.php';" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Close</button>
                </div>
            </div>
        </dialog>
    <?php endif; ?>

    <form id="couponForm" action="coupon_code.php" method="POST" class="p-8">
        <h1 class="text-center font-bold text-black text-xl">Create A New Coupon</h1>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Coupon Id</label>
            <input id="couponId" name="couponId" type="number" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Coupon Code</label>
            <input id="couponCode" name="couponCode" type="text" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Coupon Name</label>
            <input id="couponName" name="couponName" type="text" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Occasion</label>
            <select id="occasion" name="occasion" required class="w-full bg-transparent text-xs font-medium text-gray-800 px-3 py-2 border-b border-gray-300 focus:border-blue-500 outline-none transition duration-200 ease-in-out">
                <option value="" disabled selected>Select Occasion</option>
                <option value="mother's day">Mother's Day</option>
                <option value="women's day">Women's Day</option>
                <option value="eid">Eid</option>
                <option value="puja">Puja</option>
                <option value="christmas">Christmas</option>
                <option value="new year">New Year</option>
                <option value="black friday">Black Friday</option>
                <option value="other">Other</option>
            </select>
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Description</label>
            <textarea id="description" name="description" class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none"></textarea>
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Minimum Purchase</label>
            <input id="minPurchase" name="minPurchase" type="number" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none" min="700">
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">Start Date</label>
            <input id="startDate" name="startDate" type="date" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
        </div>

        <div class="mb-4">
            <label class="text-gray-800 text-xs block mb-2">End Date</label>
            <input id="endDate" name="endDate" type="date" required class="w-full bg-transparent text-sm text-gray-800 border-b border-gray-300 focus:border-blue-500 px-2 py-3 outline-none">
        </div>

        <div class="mt-6">
            <button type="submit" id="submitBtn" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Submit</button>
        </div>
    </form>
</body>
</html>
