MATCH
  (start:Person {id:$personId})<-[:HAS_CREATOR]-()<-[:REPLY_OF]-(comment:Comment)-[:HAS_CREATOR]->(person:Person)
RETURN
  person.id AS personId,
  person.firstName AS personFirstName,
  person.lastName AS personLastName,
  comment.creationDate AS commentCreationDate,
  comment.id AS commentId,
  comment.content AS commentContent
ORDER BY commentCreationDate DESC, toInt(commentId) ASC
LIMIT 20
