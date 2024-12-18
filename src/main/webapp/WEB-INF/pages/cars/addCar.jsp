<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="AddCar">
    <div class="container text-center">
        <h1 class="mt-4 mb-4">Add Car</h1>
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
            <!-- License Plate -->
            <div class="mb-3">
                <label for="license_plate" class="form-label">License Plate</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate"
                       placeholder="Enter license plate">
            </div>

            <!-- Parking Spot -->
            <div class="mb-3">
                <label for="parking_spot" class="form-label">Parking Spot</label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot"
                       placeholder="Enter parking spot">
            </div>

            <!-- Owner -->
            <div class="mb-3">
                <label for="owner_id" class="form-label">Owner</label>
                <select class="form-select" id="owner_id" name="owner_id">
                    <option value="">Choose...</option>
                    <c:forEach var="user" items="${users}">
                        <option value="${user.id}">${user.password}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Save Button -->
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</t:pageTemplate>