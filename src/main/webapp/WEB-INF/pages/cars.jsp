<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <div class="mt-5">
        <h1 class="d-flex justify-content-center">List of all the Cars</h1>
        <form method="POST" action="${pageContext.request.contextPath}/Cars">
            <div class="d-flex justify-content-center">
                <a class="btn btn-primary btn-lg m-2" type="submit" href="${pageContext.request.contextPath}/AddCar">Add
                    Car</a>
                <button class="btn btn-danger btn-lg m-2" type="submit">Delete</button>
            </div>
            <div class="container text-center">
                <div class="row">
                    <div class="col mt-2"><strong>Select</strong></div>
                    <div class="col mt-2"><strong>License Plate</strong></div>
                    <div class="col mt-2"><strong>Parking Spot</strong></div>
                    <div class="col mt-2"><strong>Owner</strong></div>
                    <div class="col mt-2"><strong>Actions</strong></div>
                </div>
                <c:forEach var="car" items="${cars}">
                    <div class="row">
                        <div class="col mt-2">
                            <input type="checkbox" name="carId" value="${car.id}">
                        </div>
                        <div class="col mt-2">
                                ${car.licensePlate}
                        </div>
                        <div class="col mt-2">
                                ${car.parkingSpot}
                        </div>
                        <div class="col mt-2">
                                ${car.ownerName}
                        </div>
                        <div class="col mt-1">
                            <a class="btn btn-warning" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit
                                Car
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </form>
    </div>
</t:pageTemplate>