<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>School of Computer Science & Engineering</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
		/>
		<style>
			body {
				background-color: #f8f9fa;
			}
			.form-container {
				background-color: #ffffff;
				padding: 30px;
				border-radius: 10px;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			}
		</style>
	</head>
	<body>
		<div class="container mt-5">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="form-container">
						<h2 class="text-center mb-4">Personal Information</h2>
						<form action="RegisterServlet" method="post">
							<div class="mb-3">
								<label for="id" class="form-label">ID</label>
								<input type="text" class="form-control" id="id" name="id" required />
							</div>
							<div class="mb-3">
								<label for="fullName" class="form-label">Full Name</label>
								<input type="text" class="form-control" id="fullName" name="fullName" required />
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email</label>
								<input type="email" class="form-control" id="email" name="email" required />
							</div>
							<div class="mb-3">
								<label class="form-label">Gender</label>
								<div>
									<div class="form-check form-check-inline">
										<input
											class="form-check-input"
											type="radio"
											id="male"
											name="gender"
											value="Male"
											required
										/>
										<label class="form-check-label" for="male">Male</label>
									</div>
									<div class="form-check form-check-inline">
										<input
											class="form-check-input"
											type="radio"
											id="female"
											name="gender"
											value="Female"
										/>
										<label class="form-check-label" for="female">Female</label>
									</div>
								</div>
							</div>
							<div class="mb-3">
								<label for="fieldOfStudy" class="form-label">Field of study</label>
								<select class="form-select" id="fieldOfStudy" name="fieldOfStudy" required>
									<option value="CS">Computer Science</option>
									<option value="CE">Computer Engineering</option>
									<option value="IT">Information Technology</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">List of subjects</label>
								<div class="form-check">
									<input
										class="form-check-input"
										type="checkbox"
										id="principle"
										name="subjects"
										value="Principle of EE 1"
									/>
									<label class="form-check-label" for="principle">Principle of EE 1</label>
								</div>
								<div class="form-check">
									<input
										class="form-check-input"
										type="checkbox"
										id="network"
										name="subjects"
										value="Computer Network"
									/>
									<label class="form-check-label" for="network">Computer Network</label>
								</div>
								<div class="form-check">
									<input
										class="form-check-input"
										type="checkbox"
										id="web"
										name="subjects"
										value="Web Application Development"
									/>
									<label class="form-check-label" for="web">Web Application Development</label>
								</div>
								<div class="form-check">
									<input
										class="form-check-input"
										type="checkbox"
										id="oop"
										name="subjects"
										value="Object Oriented Programming"
									/>
									<label class="form-check-label" for="oop">Object Oriented Programming</label>
								</div>
								<div class="form-check">
									<input
										class="form-check-input"
										type="checkbox"
										id="graphics"
										name="subjects"
										value="Computer Graphics"
									/>
									<label class="form-check-label" for="graphics">Computer Graphics</label>
								</div>
							</div>
							<div class="mb-3">
								<label for="comments" class="form-label">Comments</label>
								<textarea class="form-control" id="comments" name="comments" rows="4"></textarea>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn btn-secondary">Cancel</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	</body>
</html>
