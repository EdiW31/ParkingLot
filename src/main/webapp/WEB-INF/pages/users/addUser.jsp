<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="AddUser">
    <div class="container text-center">
        <h1 class="mt-4 mb-4">Add User</h1>
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
            <!-- Username -->
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required
                       placeholder="Enter the Username">
                <div class="invalid-feedback">
                    Username is required.
                </div>
            </div>

            <!-- email -->
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required
                       placeholder="Enter Email">
                <div class="invalid-feedback">
                    Email is required.
                </div>
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required
                       placeholder="Enter the password">
                <div class="invalid-feedback">
                    Password is required.
                </div>
            </div>

            <!-- Group -->
            <div class="mb-3">
                <label for="user_groups" class="form-label">Groups</label>
                <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
                    <c:forEach var="user_group" items="${userGroups}" varStatus="status">
                        <option value="${user_group}">${user_group}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Save Button -->
            <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
                <!-- Save Button -->
                <button type="submit" class="btn btn-primary">Save</button>
            </c:if>
        </form>
    </div>
    <div class="container text-center">
        <h1 class="mt-4 mb-4">Edit User</h1>
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditUser">

            <!-- Username -->
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" value="${user.password}" required>
            </div>

            <!-- Email -->
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password (leave blank to keep current password)</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>

            <!-- Groups -->
            <div class="mb-3">
                <label for="user_groups" class="form-label">Groups</label>
                <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
                    <c:forEach var="user_group" items="${userGroups}" varStatus="status">
                        <option value="${user_group}">${user_group}</option>
                    </c:forEach>
                </select>
            </div>

            <!-- Save Button -->
            <input type="hidden" name="user_id" value="${user.id}"/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>

</t:pageTemplate>