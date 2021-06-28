'use strict';

angular.module('MGL_Task1_app').controller('MGL_Task1_Controller',
		[ 'MGL_Task1_Service', '$document', function(MGL_Task1_Service, $document) {
			var self = this;
			self.game = {
				game_id : '',
				game_name : '',
				game_genre : ''
			};
			self.games = [];

			self.fetchAllGames = function(){
				MGL_Task1_Service.fetchAllGames().then(function(data) {
					self.games = data;
				});
			}

			self.addGame = function(game){
				console.log("function called");
				console.log(game);
				return MGL_Task1_Service.createGame(game).then( function() {
				self.fetchAllGames();
				});
			}
			
			self.deleteGame = function(game){
				return MGL_Task1_Service.deleteGame(game).then( function() {
				self.fetchAllGames();
				});
			}
			
			
			self.showUpdateGameRow = function(game)
	    	{
		    	
		    	document.getElementById('name_header').style.display="table-cell" ;
		    	document.getElementById('genre_header').style.display="table-cell" ;
		    	document.getElementById('finalize').style.display="table-cell";
		    	document.getElementById(game.name+'_input').style.display="table-cell";
		    	document.getElementById(game.name+'_genre_input').style.display="table-cell";
	    		document.getElementById(game.name+'_update').style.display="table-cell";
	    	}
			
			self.fetchAllGames();
		} ]);
