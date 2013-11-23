<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="${pageContext.request.locale.language}">
 				
<head>
 	<meta charset="UTF-8">
 	<meta content="IE=edge" http-equiv="X-UA-Compatible">
 	<meta content="width=device-width, initial-scale=1.0" name="viewport">
 	<title>AddProduct | SupCommerce</title>
 	<%-- CSS bootstrap 3.0 --%> 
 	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
 	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap-theme.min.css">
 	<link rel="stylesheet" href="<c:url value="/css/style.css"/>">					
</head>
 					
<body>
    
<jsp:include page="/WEB-INF/template/header.jsp"/>

<section id="main-container" class="container">
	<div class="row">
		<h1 class="col-sx-12 col-sm-12 col-md-12 col-lg-12">Add Product</h1>
		
		<div class="col-sm-12 col-md-12 col-lg-12">
			<article class="panel panel-primary">
				<header class="panel-heading">
					<h4>Fill product's fields</h4>
				</header>
				<section class="panel-body">
					<form class="form-horizontal" action="addProduct" method="post">
						<div class="form-group ${not empty nameError ? 'has-error' : ''}">
							<div class="col-xs-offset-2 col-xs-8">
								<div class="input-group">
									<span class="input-group-addon label-fix"><label for="product-name" class="control-label">Product Name</label></span>
									<input type="text" name="product-name" id="product-name" class="form-control" value="<c:out value="${name}"/>" placeholder="Enter a name" />
								</div>
							</div>
							<div class="col-xs-2">
								<c:if test="${not empty nameError}">
									<span class="help-block"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp; <c:out value="${nameError}"/></span>
								</c:if>
							</div>
						</div>
						<div class="form-group ${not empty contentError ? 'has-error' : ''}">
							<div class="col-xs-offset-2 col-xs-8">
								<div class="input-group">
									<span class="input-group-addon label-fix"><label for="product-content" class="control-label">Product Description</label></span>
									<input type="text" name="product-content" id="product-content" class="form-control" value="<c:out value="${content}"/>" placeholder="Enter a description" />
								</div>								
							</div>
							<div class="col-xs-2">
								<c:if test="${not empty contentError}">
									<span class="help-block"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp; <c:out value="${contentError}"/></span>
								</c:if>
							</div>
						</div>
						<div class="form-group ${not empty priceError ? 'has-error' : ''}">
							<div class="col-xs-offset-2 col-xs-8">
								<div class="input-group">
									<span class="input-group-addon label-fix"><label for="product-price" class="control-label">Product Price</label></span>
									<input type="number" step="0.01" min="0" max="1000000" name="product-price" id="product-price" class="form-control" value="<c:out value="${price}"/>" placeholder="0.00"/>
									<span class="input-group-addon">€</span>
								</div>
							</div>
							<div class="col-xs-2">
								<c:if test="${not empty priceError}">
									<span class="help-block"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp; <c:out value="${priceError}"/></span>
								</c:if>
							</div>
						</div>
						<div class="form-group">
						    <div class="col-xs-offset-2 col-xs-10">
						      	<button type="submit" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-plus"></span>&nbsp; Add</button>
						    </div>
					  	</div>						
					</form>
				</section>			
			</article>
		</div>
	</div>
</section>
	
<jsp:include page="/WEB-INF/template/footer.jsp"/>

</body>
</html>