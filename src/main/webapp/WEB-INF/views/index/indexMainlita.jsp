<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <c:forEach items="${listImg}" var="item" varStatus="status">
        <div class="col">
          <div class="card shadow-sm">
            	<a href="/infra/resources/uploaded/store/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>"><img src="/infra/resources/uploaded/store/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" width="100%" height="225"/></a>
            <div class="card-body">
              <p class="card-text"><c:out value="${item.stifDesc}"/></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='javascript:goForm(<c:out value="${item.stifSeq}"/>)'">View</button>
					<!-- <p id="result"></p> -->
                </div>
                <small class="text-muted">stifSeq: <c:out value="${stifSeq}"/><br></small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        </div>