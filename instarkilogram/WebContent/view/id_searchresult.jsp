<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>id_searchresult</title>

<style>
</style> 

</head>
<body>
	<div class="bar">
         <div class="home">
            <h3>instarkilogram</h3>
         </div>
         <div class="container">
         <span> <input class="seach1" type="text"
               placeholder="Search" aria-label="Search">&nbsp;</span>
               
               <span> <input type="button" value="검색" ></span>
         
         
         </div><!--container-->
         
    </div>
          <div class="feed_name">
							<div class="profile_box">
								<span><img class="profile_img"
									src="data:image/jpeg;base64,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"></span>
								<span class="name_txt"> &nbsp;joheee </span>
							</div>
							
	     </div>
	         <div class="feed_name">
						<div class="profile_box">
								<span><img class="profile_img"
									src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEA8PEA4QEA4PEA0PDw8PDw8PDw0NFREWFxUSFhMYHSggGBolGxYWITEhJSkrLi4uFx8zODMsNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIANEA8QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQQFAwIGB//EADUQAAIBAgMECAUEAgMAAAAAAAABAgMRBCExBRJBUSJSYXGBkaHRFTJCscETYpLhcvEUI+L/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A/cQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAr4nFRhrnLqrUCwcKuLhDJyz5LNmbXxk5/tXJe5XSAv1NpP6Y/yf4RXnjKj+q2f0pLwOIAmpUlLNyl4Sa+xP6krW35fyZ5AHqnVlHScvGTf3OlPGVFbpXzz3km32HEAXqe0n9Uf4v8Mt0sXCeks+TyfqYxFgPoCTGoY2cMvmXJ+5pYfFRnpk+MXqgO4AAAAAAAAAAAAAAAAAAAAAAZuOxl7xi8uLX2AnF4/WMNeMuHgZ+ub158QiQAAAAAAAAAAAAAAFlmtVxQAGhhMde0Z68JcH39poHzzRoYHGaRm+yLf2A0QAAAAAAAAAAAAAAAAwcsTWUIuXkubAq7RxNluR1fzftRmpEuTbberdwAAAAAAAQ2e6dKUvlTYHkFuGzpPVpep7+Gfv9AKILc9nTWjT9CtUpyj8yaA8gAAAABEkSANLZ+K3ug/mWn7ol4+fjJxaktVmjcoVVOKkuPDk+QHQAAAAAAAAAAAAAMnaVa8t1aR1/wAjUqT3U5PRJswL3bb1bu+8CQAAAAAgku7Ow1+nJZfT7gThMBfpT8F7mhGKWSVkegAAAA8ygnk1ddp6AGZi8DbpQ04r2KJ9CZm0MNbpxWXFcgKQAAAAAXNmVrScHpLNd6KYUnFqS1TTXgB9ADzTkpJNaNJruPQAAAAAAAAAAAU9qVLQt1mlrbLVmWXdrN3grZWb7blIAAAAAA9Uqe9JR5v0NyEbJJaLIy9lwvNvkjWAAAAAAAAAHmcU009HkegBgVIOMnF8GQWtpQtO/NJlUAAABDJAGrsyd6aXVbWt+4tmdshvprh0X3vNP7I0QAAAAAAAAAAAx9pt/qdm7G3myuWdqS/7Lcor8lYAAAAAAvbJ1l4GkZOzJWm1zRrAAAAAAAAAAABmbV+aPd+SkWdpTvO3JJFYAAAAAAtbLb/UfLcfndGsZWypdNrnFvya9zVAAAAAAAAAAADK2rFb8XxcfRP+yoaG1o5ReWTt25ozwAAAAACac92SfJm7CSaTWjzMEubPxNuhLR6PkwNQEIkAAAAAAHmpNRTb0R6MvaGJ3nuLRa9rAqTlvNt8cyAAAAAAEMC7smK3pPiopeDf/k1ChsiPRk8s5W7bJaedy+AAAAAAAAAAAHDGU96Elxtdd6MVM+hMPE0tyclwvddzA5gAAAABDRIAuYXHW6Ms1wfFGlCaaundGCTCTjmm0wN8GRDaE1rZ96OnxOXVXqBpXInUUVduyMqePm9LLuRXnJyzbbAtYvGuWUclz4spokAAAAAAAiTJOuDpb80uC6T8P7sBq4WnuwjHikr9/E7AAAAAAAAAAAAAKe0qG9HeWsc+9cS4QwPn0yTvjaH6csvllp2PijgAIbJWeS1NHC4BLOeb5cEBRpUZS+VNliOzp8WkaiViQMv4bLrL1Hw2XWXqagAy/hsusvUfDZdZepqADL+Gy6y9R8Nl1l6moAMv4bLrL1PMtnTWjTNYAYNSlKPzJo8m9KKeTV0UMXgeMP4+wFAEEgQ2a2zqG7G7Wcs32LgilgcPvyu/ljr2vgjYAAAAAAAAAAAAAAAAA51qamnF6P0fMxa1GUHaXg+DRvHKvRU1Z+fICrs7DpLfer07EXzIjOdCVnnH0l2rtNKjWjNXT/oDqAAAAAAAAAAAAAEMHOvXUFdvuXFgUtpYf614+5UoUJTdl4vkjs3OvLLKKfhH3Zp0aSgrL/YE0qaikloj2AAAAAAAAAAAAAAAAAAAAHipTUlaSujOq4SdN71Ntrl9S9zUAGfh9op5TyfPgXoSTzTuuw5V8JCeqs+ayZRlhKsM4Sv3ZPyA1QZUcfOOU4+acWWIbRg9U0BdBwjjKb+peORP/Kh14+YHYHCWMpr6l4ZnGe0IrRN+gF08zklm2ku0zJY+pLKEfJOTsTHB1J5zlb1YHTEbRSyhm+ZzoYOVR71RtLl9T9i7QwsIaLPm82dwPFOmoqyVkuB7AAAAAAAAAAAAAAAAAAAAAAAAAAAACHFPVX7zhPBU5awWt8rxu/AsAClU2bB8ZR7E1+UPhkOcu+6v9i6AKVPZsFxlL/Jr8I7U8HTjpBZZq95NPvZ3AEJJaK3cSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH//2Q=="></span>
								<span class="name_txt"> &nbsp;hee23 </span>
						</div>
							
	     </div>

</body>
</html>