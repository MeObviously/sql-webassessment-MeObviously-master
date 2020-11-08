<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="success.aspx.vb" Inherits="SQL_WebAssessment.success" %>

<%Response.WriteFile("header_nav.html") %>

<div class="container">
            <div class="main">
                <h1>Congratulations</h1>
                <p>
                    You have made a listing. Your lost item has now been reported to the school.
                </p>

                <!-- Table placeholder for user results -->
                <table class="results">
                    <tr class="results">
                        <th class="results">Item</th>
                        <th class="results">Brand</th>
                        <th class="results">Colour</th>
                        <th class="results">Size</th>
                        <th class="results">Named</th>
                        <th class="results">Name</th>
                    </tr>

                    <tr class="results">
                        <td class="results">Bag</td>
                        <td class="results">Animas</td>
                        <td class="results">Black</td>
                        <td class="results">M</td>
                        <td class="results">Yes</td>
                        <td class="results">Michael G.</td>
                    </tr>
                </table>
            </div>
        </div>
    </body>

    <%Response.WriteFile("footer.html") %>
</html>