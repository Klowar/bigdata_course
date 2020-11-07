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
MATCH (p:Person {name: "Jennifer"}), (g:Person {name: "Geralt"})
    CREATE (p)-[:LIKES]->(g),
    CREATE (p)<-[:LIKES]-(g);
MATCH (g:Person {name: "Geralt"}), (l:Person {name: "Lutik"})
    CREATE (g)-[:FRIENDS_WITH]->(l),
    CREATE (g)<-[:FRIENDS_WITH]-(l);
MATCH (p:Person {name: "Geralt"}), (g:Person {name: "Kagir Aep Kaelax"})
    CREATE (p)-[:FRIENDS_WITH]->(g),
    CREATE (p)<-[:FRIENDS_WITH]-(g)
MATCH (p:Person {name: "Geralt"}), (g:Person {name: "Ciri"})
    CREATE (p)-[:PARENT_OF]->(g);
MATCH (p:Person {name: "Jennifer"}), (g:Person {name: "Ciri"})
    CREATE (p)-[:PARENT_OF]->(g);
// Match roles
MATCH (p:Person {name: "Jennifer"}), (r: Role {name: "Witch"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Geralt"}), (r: Role {name: "Witcher"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Ciri"}), (r: Role {name: "Witcher"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Ciri"}), (r: Role {name: "Witch"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Lutik"}), (r: Role {name: "Bard"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Kagir Aep Kaelax"}), (r: Role {name: "Knight"})
    CREATE (p)-[:IS]->(r);
MATCH (p:Person {name: "Jennifer"}), (r: Role {name: "Witch"})
    CREATE (p)-[:IS]->(r);


