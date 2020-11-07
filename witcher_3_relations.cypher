// Create models
CREATE (p:Person {name: "Kagir Aep Kaelax"});
CREATE (p:Person {name: "Jennifer"});
CREATE (p:Person {name: "Geralt"});
CREATE (p:Person {name: "Lutik"});
CREATE (p:Person {name: "Ciri"});
// 
CREATE (p:Role {name: "Witcher"});
CREATE (p:Role {name: "Witch"});
CREATE (p:Role {name: "Bard"});
CREATE (p:Role {name: "Knight"});
// Create relations
// Both directions
MATCH (p:Person {name: "Jennifer"})-[:LIKES]-(p: Person {name: "Geralt"});
MATCH (p:Person {name: "Geralt"})-[:FRIENDS_WITH]-(p: Person {name: "Lutik"});
MATCH (p:Person {name: "Geralt"})-[:FRIENDS_WITH]-(p: Person {name: "Kagir Aep Kaelax"});
MATCH (p:Person {name: "Geralt"})-[:PARENT_OF]->(p: Person {name: "Ciri"});
MATCH (p:Person {name: "Jennifer"})-[:PARENT_OF]->(p: Person {name: "Ciri"});
// Match roles
MATCH (p:Person {name: "Jennifer"})-[:IS]-(p: Role {name: "Witch"});
MATCH (p:Person {name: "Geralt"})-[:IS]-(p: Role {name: "Witcher"});
MATCH (p:Person {name: "Ciri"})-[:IS]-(p: Role {name: "Witcher"});
MATCH (p:Person {name: "Ciri"})-[:IS]-(p: Role {name: "Witch"});
MATCH (p:Person {name: "Lutik"})-[:IS]->(p: Role {name: "Bard"});
MATCH (p:Person {name: "Kagir Aep Kaelax"})-[:IS]->(p: Role {name: "Knight"});


