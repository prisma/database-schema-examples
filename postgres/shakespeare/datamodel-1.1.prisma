type Chapter @db(name: "chapter") {
  chapter: Int!
  chapterid: Int! @id
  description: String!
  section: Int!
  workid: Work!
}

type Character @db(name: "character") {
  abbrev: String
  characterWork: [CharacterWork]
  charid: ID! @id
  charname: String!
  description: String
  paragraph: [Paragraph]
  speechcount: Int!
}

type CharacterWork @db(name: "character_work") @linkTable {
  charid: Character!
  workid: Work!
}

type Paragraph @db(name: "paragraph") {
  chapter: Int!
  charcount: Int!
  charid: Character!
  paragraphid: Int! @id
  paragraphnum: Int!
  paragraphtype: String!
  phonetictext: String!
  plaintext: String!
  section: Int!
  stemtext: String!
  wordcount: Int!
  workid: Work!
}

type Wordform @db(name: "wordform") {
  occurences: Int!
  phonetictext: String!
  plaintext: String!
  stemtext: String!
  wordformid: Int! @id
}

type Work @db(name: "work") {
  chapter: [Chapter]
  characterWork: [CharacterWork]
  genretype: String!
  longtitle: String!
  notes: String
  paragraph: [Paragraph]
  source: String!
  title: String!
  totalparagraphs: Int!
  totalwords: Int!
  workid: ID! @id
  year: Int!
}
