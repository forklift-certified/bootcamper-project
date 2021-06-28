<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
        <script src="resources/static/js/app.js" /></script>
        <script src="resources/static/js/service/MGL_Task1.service.js"></script>
        <script src="resources/static/js/controller/MGL_Task1.controller.js"></script>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Mist Library Task 1-Games</title>
        <style type="text/css">
            body {
            	background-image:
            		url('https://ak6.picdn.net/shutterstock/videos/1024598666/thumb/1.jpg');
            	background-repeat: no-repeat;
            	background-size: cover;
            }
        </style>
        <link rel="apple-touch-icon" sizes="180x180" href="/android-chrome-192x192.png">
    	<link rel="icon" type="image/png" sizes="32x32" href="resources/static/images/favicon-32x32.png">
    	<link rel="icon" type="image/png" sizes="16x16" href="resources/static/images/favicon-16x16.png">
    </head>

    <body ng-app="MGL_Task1_app" class="ng-cloak">
        <nav id="MistLibrary-navbar" class="navbar navbar-expand-md navbar-dark bg-dark">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">
			<img src="resources/static/images/MGLlogo.png" width="90" height="60" alt="">
		</a>
            <a class="nav-item nav-link" href="games">Games</a>
            <a class="nav-item nav-link" href="review">Review</a>
        </nav>
        <br>
        <div class="container" ng-controller="MGL_Task1_Controller as MGL_T1_ctrl">
            <div class="panel panel-default">
                <div class="panel-heading text-light"><span class="lead">Game Registration Form </span></div>
                <div class="formcontainer">
                    <form ng-submit="MGL_T1_ctrl.addGame()" name="gameForm" class="form-horizontal">
                        <input type="hidden" ng-model="MGL_T1_ctrl.game.id" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable text-light" for="name">Name*</label>
                                <div class="col-md-7">
                                    <input type="text" ng-model="MGL_T1_ctrl.game.name" id="name" class="name form-control input-sm" placeholder="Enter the name of the new game [required]" required ng-minlength="3" />
                                    <div class="has-error" ng-show="gameForm.$dirty">
                                        <span ng-show="gameForm.game_name.$error.required">This is a required field</span>
                                        <span ng-show="gameForm.game_name.$error.minlength">Minimum length required is 3</span>
                                        <span ng-show="gameForm.game_name.$invalid">This field is invalid </span>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable text-light" for="genre">Game Genre</label>
                                <div class="col-md-7">
                                    <input type="text" ng-model="MGL_T1_ctrl.game.genre" id="genre" class="form-control input-sm" placeholder="Enter the genre of the new game" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-actions floatRight">
                                <input type="submit" value="Add" class="btn btn-primary btn-sm">
                            </div>
                        </div>
                        
                        
                    </form>
                </div>
            </div>
            
                   
                    
            
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading text-light"><span class="lead">List of all current games</span></div>
                <div class="tablecontainer">
                    <table class="table table-dark table-striped text-light">
                        <thead>
                            <tr >
                                <th>Game Name</th>
                                <th>Game Genre</th>
                                <th id = "edit">Edit</th>
                                <th id = "name_header" style="display:none;">New Name</th>
                                <th id = "genre_header" style="display:none;">New Genre</th>
                                <th id = "finalize" style="display:none;"></th>
                                <th id ="delete_header">Delete</th>                               
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr ng-repeat="currentGame in MGL_T1_ctrl.games" ng-attr-id = "currentGame.id">
                                <td><span ng-bind="currentGame.name"></span></td>
                                <td><span ng-bind="currentGame.genre"></span></td>
                                <td><button ng-click = "MGL_T1_ctrl.showUpdateGameRow(currentGame)" class="btn btn-primary btn-sm">Edit</button></td>
	                            <td><input type="text" ng-model="currentGame.name" ng-attr-id="{{currentGame.name + '_input'}}" style="display:none;"  /></td>
	                            <td><input type="text" ng-model="currentGame.genre" ng-attr-id="{{currentGame.name + '_genre_input'}}" style="display:none;" /></td>
	                            <td><button ng-click = MGL_T1_ctrl.addGame(currentGame) ng-attr-id="{{currentGame.name + '_update'}}" class="btn btn-primary btn-sm" style="display:none;" />Submit</td>
                                <td><button ng-click = MGL_T1_ctrl.deleteGame(currentGame) class="btn btn-primary btn-sm">Delete</button></td>
                                
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

	<script type="text/javascript">
	    function hide()
	    {
	    	
	    	document.getElementById('dummy_n').style.display="none";
	    	document.getElementById('dummy_g').style.display="none";
	    	document.getElementById('dummy_b').style.display="none";
	    	document.getElementById('dummy_s').style.display="none";
	    	document.getElementById('dummy_d').style.display="none";
	    	document.getElementById('dummy_genre').style.display="none";
	    	document.getElementById('dummy_name').style.display="none";
	    	
	    	
	    }
	    
	
    
    </script>

    </body>
    

    </html>