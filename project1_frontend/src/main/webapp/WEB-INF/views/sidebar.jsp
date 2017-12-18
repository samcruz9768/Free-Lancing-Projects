<h5 class="my-4">Categories</h5>
          <div class="list-group">
          <c:forEach items="${categories }" var="category">
            <a href="#" class="list-group-item">${category.categoryname }</a>
           </c:forEach>
          </div>
