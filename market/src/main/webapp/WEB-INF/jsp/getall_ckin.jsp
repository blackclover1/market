<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file="common/head.jsp"%>    
	<div class="right_col" role="main"> 
	<div class="clearfix"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title row">
	                    <h2>进货信息列表 </h2>
	                    <div class="clearfix"></div>
	                  </div>
					<!-- 按钮 -->
					<div class="row">
						<div class="mid_center">
			                  <div class="col-xs-12 col-md-offset-10 ">
			                    <div class="input-group">
			                      <input type="text" class="form-control" placeholder="Search for...">
			                      <span class="input-group-btn">
<%-- 			                              <button class="btn btn-primary" type="button">查询</button>
			                              <button class="btn btn-primary"  type="button" href="${pageContext.request.contextPath }/staff/flatform/ckin/toaddpro">新增</button>
 --%>			                      	<a href="#" class="btn btn-primary " role="button">查询 </a>
									<a href="${pageContext.request.contextPath }/staff/flatform/ckin/toadd" class="btn btn-primary " role="button">新增</a>
			                      </span>
			                    </div>
			                  </div>
		                </div>
					</div>
					<div class="row">
	                  <div class="x_content">
	                    <table id="datatable" class="table table-striped table-bordered table-hover">
					    	<tr>
					    		 <th>订单id</th>	
					        	 <th>商品id</th>
					        	 <th>名称</th>
					         	 <th>数量</th>
					        	 <th>进货日期</th>
					        	 <th>备注</th>
					        	 <th>操作</th>
					        </tr>
					        <c:forEach items="${pageInfo.list}" var="ckin">
					        	<tr>
					        			     <th>${ckin.inid}</th>
					        			     <th>${ckin.proid}</th>
					                         <th>${ckin.pname}</th>
					                         <th>${ckin.num}</th>
					                         <th><fmt:formatDate pattern="yyyy-MM-dd" value="${ckin.indate}"/></th>
					                         <th>${ckin.marks}</th>      
					                         <th>
					                            <div class="btn-group">
												  <button type="button" class="btn btn-xs btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												    编辑 <span class="caret"></span>
												  </button>
												  <ul class="dropdown-menu">
												    <li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getbyid?inid=${ckin.inid}" >查看</a></li>
												    <li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/edit?inid=${ckin.inid}">修改</a></li>
												  </ul>
												</div>
					                            <a href="${pageContext.request.contextPath }/staff/flatform/ckin/delete?inid=${ckin.inid}"  class="btn btn-danger btn-xs" aria-label="Left Align" role="button">删除</a>
					                         </th>
					          	</tr>
					         </c:forEach>
	                    </table>
	                  </div>
	                  </div>
						<!-- 显示分页信息 -->
						<div class="row">
							<!--分页文字信息  -->
							<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
								页,总 ${pageInfo.total } 条记录</div>
							<!-- 分页条信息 -->
							<div class="col-md-6">
								<nav aria-label="Page navigation">
								<ul class="pagination">
									<li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getall?pn=1">首页</a></li>
									<c:if test="${pageInfo.hasPreviousPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getall?pn=${pageInfo.pageNum-1}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
									</c:if>
				
				
									<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<li class="active"><a href="#">${page_Num }</a></li>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getall?pn=${page_Num }">${page_Num }</a></li>
										</c:if>
				
									</c:forEach>
									<c:if test="${pageInfo.hasNextPage }">
										<li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getall?pn=${pageInfo.pageNum+1 }"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</c:if>
									<li><a href="${pageContext.request.contextPath }/staff/flatform/ckin/getall?pn=${pageInfo.pages}">末页</a></li>
								</ul>
								</nav>
							</div>
						</div>
		
	                </div>
	</div>
</div>
<%@include file="common/footer.jsp"%>