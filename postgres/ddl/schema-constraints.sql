-- add PKs
ALTER TABLE Message ADD PRIMARY KEY (id);
ALTER TABLE Forum ADD PRIMARY KEY (id);
ALTER TABLE Forum_hasMember_Person ADD PRIMARY KEY (ForumId, PersonId);
ALTER TABLE Forum_hasTag_Tag ADD PRIMARY KEY (ForumId, TagId);
ALTER TABLE Person ADD PRIMARY KEY (id);
-- ALTER TABLE person_email ADD PRIMARY KEY (pe_personid, pe_email);
ALTER TABLE Person_hasInterest_Tag ADD PRIMARY KEY (PersonId, TagId);
ALTER TABLE Person_knows_Person ADD PRIMARY KEY (Person1Id, Person2Id);
ALTER TABLE Person_likes_Message ADD PRIMARY KEY (PersonId, id);
-- ALTER TABLE person_language ADD PRIMARY KEY (plang_personid, plang_language);
ALTER TABLE Person_studyAt_University ADD PRIMARY KEY (PersonId, UniversityId);
ALTER TABLE Person_workAt_Company ADD PRIMARY KEY (PersonId, CompanyId);
ALTER TABLE Message_hasTag_Tag ADD PRIMARY KEY (id, TagId);

-- create index on foreign keys
CREATE INDEX ON Forum (ModeratorPersonId);
CREATE INDEX ON Forum_hasMember_Person (ForumId);
CREATE INDEX ON Forum_hasMember_Person (PersonId);
CREATE INDEX ON Forum_hasTag_Tag (ForumId);
CREATE INDEX ON Forum_hasTag_Tag (TagId);
CREATE INDEX ON Person_knows_Person (Person1Id);
CREATE INDEX ON Person_knows_Person (Person2Id);
CREATE INDEX ON Person_likes_Message (PersonId);
CREATE INDEX ON Person_likes_Message (id);
CREATE INDEX ON University (LocationPlaceId);
CREATE INDEX ON Company (LocationPlaceId);
CREATE INDEX ON person (LocationCityId);
CREATE INDEX ON Person_workAt_Company (PersonId);
CREATE INDEX ON Person_workAt_Company (CompanyId);
CREATE INDEX ON Person_hasInterest_Tag (PersonId);
CREATE INDEX ON Person_hasInterest_Tag (TagId);
CREATE INDEX ON Person_studyAt_University (PersonId);
CREATE INDEX ON Person_studyAt_University (UniversityId);
CREATE INDEX ON Message (CreatorPersonId);
CREATE INDEX ON Message (LocationCountryId);
CREATE INDEX ON Message (ContainerForumId);
CREATE INDEX ON Message (ParentMessageId);
CREATE INDEX ON Message_hasTag_Tag (id);
CREATE INDEX ON Message_hasTag_Tag (TagId);
CREATE INDEX ON Tag (TypeTagClassId);
CREATE INDEX ON TagClass (SubclassOfTagClassId);
