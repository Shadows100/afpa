CREATE USER 'util1'@'localhost' IDENTIFIED BY 'mdp';

GRANT ALL PRIVILEGES ON vacance.* TO'utli1'@'localhost'
IDENTIFIED BY 'mdp';


CREATE USER 'util2'@'localhost' IDENTIFIED BY 'kaka2';

GRANT SELECT 
ON vacance.*
TO util2
IDENTIFIED BY 'kaka2';

CREATE USER 'util3'@'localhost' IDENTIFIED BY 'kaka3';

GRANT SELECT 
ON vacance.station
TO util3 
IDENTIFIED BY 'kaka3';