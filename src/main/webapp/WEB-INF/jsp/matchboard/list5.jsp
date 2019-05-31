<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    
    <link href="${contextRootPath}/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="${contextRootPath}/css/stream.css" media="screen" rel="stylesheet" type="text/css">
    <link href="${contextRootPath}/filter.js/dist/jquery-ui-custom/jquery-ui-1.10.2.custom.min.css" media="screen" rel="stylesheet" type="text/css">
    
    <script src="${contextRootPath}/filter.js/dist/jquery-ui-custom/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="${contextRootPath}/filter.js/dist/jquery-ui-custom/jquery-ui-1.10.2.custom.min.js" type="text/javascript"></script>
    <script src="${contextRootPath}/filter.js/dist/filter.js" type="text/javascript"></script>
<!--     <script src="data/movies.js" type="text/javascript"></script>  -->
    <script src="${contextRootPath}/filter.js/examples/pagination.js" type="text/javascript"></script>
  </head>
  <body>
    <div class="container">
      <h1 class="title">FILTER.JS</h1>
      <div class="sidebar col-md-3">
        <div>
          <h4 class='col-md-6'>Movies (<span id="total_movies">0</span>)</h4>
          <div class="col-md-6 progress">
            <div class="progress-bar" id="stream_progress" style="width: 0%;">0%</div>
          </div>
        </div>
        <div>
          <label class="sr-only" for="searchbox">Search</label>
          <input type="text" class="form-control" id="searchbox" placeholder="Search &hellip;" autocomplete="off">
          <span class="glyphicon glyphicon-search search-icon"></span>
        </div>
        <br>
        <div class="well">
            <fieldset id="rating_criteria">
                <legend>Rating</legend> <span id="rating_range_label" class="slider-label">8 - 10</span>
                <div id="rating_slider" class="slider">
                </div>
                <input type="hidden" id="rating_filter" value="8-10">
            </fieldset>
        </div>
        <div class="well">
            <fieldset id="runtime_criteria">
                <legend>Runtime</legend> <span id="runtime_range_label" class="slider-label">50 mins - 250 mins</span>
                <div id="runtime_slider" class="slider">
                </div>
                <input type="hidden" id="runtime_filter" value="50-250">
            </fieldset>
        </div>
        <div class="well">
            <fieldset id="year_criteria">
                <legend>Year</legend>
                <select class="form-control" id="year_filter">
                    <option value="all">All (1920 - 2020)</option>
                    <option value="1920-1930">1920 - 1930</option>
                    <option value="1931-1940">1931 - 1940</option>
                    <option value="1941-1950">1941 - 1950</option>
                    <option value="1951-1960">1951 - 1960</option>
                    <option value="1961-1970">1961 - 1970</option>
                    <option value="1971-1980">1971 - 1980</option>
                    <option value="1981-1990">1981 - 1990</option>
                    <option value="1991-2000">1991 - 2000</option>
                    <option value="2001-2010">2001 - 2010</option>
                    <option value="2011-2020">2011 - 2020</option>
                </select>
            </fieldset>
        </div>
        <div class="well">
            <fieldset id="genre_criteria">
                <legend>Genre</legend>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="All" id="all_genre">
                    <span>All</span>
                  </label>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="Crime">
                    <span>Crime<span>
                  </label>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="Drama">
                    <span>Drama</span>
                  </label>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="Thriller">
                    <span>Thriller</span> 
                   </label>
                </div>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="Adventure">
                    <span> Adventure </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Western">
                    <span> Western </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Action">
                    <span> Action </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Biography">
                    <span> Biography </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="History">
                    <span> History </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="War">
                    <span/>War</span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Fantasy">
                    <span>Fantasy</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Sci-Fi">
                    <span>Sci-Fi</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Mystery">
                    <span>Mystery</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Romance">
                    <span>Romance </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Family">
                    <span> Family </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Horror">
                    <span> Horror </span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Film-Noir">
                    <span>Film-Noir</span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Comedy">
                    <span>Comedy</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Animation">
                    <span>Animation</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Musical">
                    <span>Musical</span>
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Music">
                    <span>Music</span> 
                  </label>
                </div>
                <div class="checkbox">
                    <label>
                    <input type="checkbox" value="Sport">
                    <span>Sport</span> 
                  </label>
                </div>
            </fieldset>
        </div>
    </div>

<!-- /.col-md-3 -->
    <div class="col-md-9">
      <div class="row">
        <div class="content col-md-12">
          <div id="pagination" class="movies-pagination col-md-9"></div>
          <div class="col-md-3 content">
            Per Page: <span id="per_page" class="content"></span>
          </div>
        </div>
      </div>

      <div class="movies row" id="movies"> </div>
    </div>
<!-- /.col-md-9 -->
</div>
<!-- /.container -->
<%-- 
      <script id="movie-template" type="text/html">
        <div class="col-md-4 movie">
          <div class="thumbnail">
            <span class="label label-success rating"><%= rating %>
            <i class="glyphicon glyphicon-star"></i>
          </span>
          <div class="caption">
            <h4><%= _fid %>. <%= name %></h4>
            <div class="outline">
              <%= outline %>
              <span class="runtime">
                <i class="glyphicon glyphicon-time"></i>
                <%= runtime %> mins.
              </span>
            </div>
            <div class="detail">
              <dl>
                <dt>Director</dt>
                <dd><%= director %></dd>
                <dt>Actors</dt>
                <dd><%= stars %></dt>
                <dt>Year</dt>
                <dd><%= year %></dd>
              </dl>
            </div>
          </div>
        </div>
      </div>
      </script>
      <script id="genre_template" type="text/html">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="<%= genre %>"> <%= genre %>
          </label>
        </div>
      </script> --%>
    </body>
  </html>
