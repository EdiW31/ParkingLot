<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <div class="mt-5">
        <h1 class="d-flex justify-content-center">List of all the Cars</h1>
        <h2 class="d-flex justify-content-center">Free Parking Spots: ${freeParkingSpots}</h2>
        <form method="POST" action="${pageContext.request.contextPath}/Cars">
            <div class="d-flex justify-content-center">
                <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                    <a class="btn btn-primary btn-lg m-2" type="submit"
                       href="${pageContext.request.contextPath}/AddCar">Add
                        Car</a>
                    <button class="btn btn-danger btn-lg m-2" type="submit">Delete</button>
                </c:if>
            </div>
            <div class="container text-center">
                <div class="row">
                    <div class="col mt-2"><strong>Select</strong></div>
                    <div class="col mt-2"><strong>License Plate</strong></div>
                    <div class="col mt-2"><strong>Parking Spot</strong></div>
                    <div class="col mt-2"><strong>Owner</strong></div>
                    <div class="col mt-2"><strong>Photo</strong></div>
                    <div class="col mt-2"><strong>Add Photo</strong></div>
                    <div class="col mt-2"><strong>Edit Car</strong></div>
                </div>
                <c:forEach var="car" items="${cars}">
                    <div class="row">
                        <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                            <div class="col mt-2">
                                <input type="checkbox" name="carId" value="${car.id}">
                            </div>
                        </c:if>
                        <div class="col mt-2">
                                ${car.licensePlate}
                        </div>
                        <div class="col mt-2">
                                ${car.parkingSpot}
                        </div>
                        <div class="col mt-2">
                                ${car.ownerName}
                        </div>
                        <div class="col mt-2">
                            <img src="${pageContext.request.contextPath}/CarPhotos?id=${car.id}" alt="Car Photo"
                                 width="48">
                        </div>
                        <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                            <div class="col mt-2">
                                <a class="btn btn-secondary"
                                   href="${pageContext.request.contextPath}/AddCarPhoto?id=${car.id}" role="button"
                                >
                                    Add Photo
                                </a>
                            </div>
                            <div class="col mt-2">
                                <a class="btn btn-primary"
                                   href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button"
                                >
                                    Edit Car
                                </a>
                            </div>
                        </c:if>


                    </div>
                </c:forEach>
            </div>
        </form>
    </div>
</t:pageTemplate>