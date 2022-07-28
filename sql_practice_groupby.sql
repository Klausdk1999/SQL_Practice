--question 1
--select count("endDate") as finished_experiences from experiences e;

--question 2
--select "userId",count("courseId") as "courses" from educations group by "userId" order by "courses" desc;

--quesion 3
--select u.name, count(t.id) from testimonials t join users u on t."writerId" = u.id where u.id=435 group by u.name ;

--question 4
--select r.name as "role",Max(j.salary) as max_salary from jobs j join roles r on j."roleId"=r.id group by r.id order by max_salary desc;
