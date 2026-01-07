document.addEventListener("DOMContentLoaded", () => {
    const tableBody = document.querySelector("#productTable tbody");
    const showAllBtn = document.getElementById("showAllBtn");
    const searchBar = document.getElementById("searchBar");

    showAllBtn.addEventListener("click", () => {
        searchBar.value = ""; // Clear search input
        fetchData(); // Re-fetch all products
    });

    // Fetch data from the backend API
    async function fetchData() {
        try {
            const response = await fetch("http://localhost:3000/api/products"); // Backend endpoint
            const data = await response.json();
            populateTable(data);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    }

    // Populate the table with product data
    function populateTable(data) {
        tableBody.innerHTML = ""; // Clear existing rows
        data.forEach((product) => {
            const row = document.createElement("tr");
            row.innerHTML = `
                <td>${product.id}</td>
                <td>${product.product_name}</td>
                <td>${product.calories}</td>
                <td>${product.ingredients ? product.ingredients : "N/A"}</td>
                <td>${product.category}</td>
            `;
            tableBody.appendChild(row);
        });
    }

    // Filter products by excluding rows with specific ingredients
    function filterTable(ingredient) {
        const rows = Array.from(tableBody.querySelectorAll("tr"));
        rows.forEach((row) => {
            const ingredientsCell = row.children[3].textContent || "";
            if (
                ingredientsCell.toLowerCase().includes(ingredient.toLowerCase())
            ) {
                row.style.display = "none";
            } else {
                row.style.display = "";
            }
        });
    }

    // Event listener for the "Show All Products" button
    showAllBtn.addEventListener("click", () => {
        fetchData(); // Load all products from the backend
    });

    // Event listener for the search bar
    searchBar.addEventListener("input", (e) => {
        const searchValue = e.target.value.trim();
        filterTable(searchValue); // Filter table based on input
    });

    // Load all products when the page is loaded
    fetchData();
});
