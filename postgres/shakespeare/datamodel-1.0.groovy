type Chapter @pgTable(name: "chapter") {
  chapter: Int!
  id: Int! @pgColumn(name: "chapterid") @unique
  description: String!
  section: Int!
  workid: Work!
}

type Character @pgTable(name: "character") {
  abbrev: String
  characterWork: [CharacterWork]
  id: ID! @pgColumn(name: "charid") @unique
  charname: String!
  description: String
  paragraph: [Paragraph]
  speechcount: Int!
}

type CharacterWork @linkTable @pgTable(name: "character_work") {
  charid: Character!
  workid: Work!
}

type Paragraph @pgTable(name: "paragraph") {
  chapter: Int!
  charcount: Int!
  charid: Character!
  id: Int! @pgColumn(name: "paragraphid") @unique
  paragraphnum: Int!
  paragraphtype: String!
  phonetictext: String!
  plaintext: String!
  section: Int!
  stemtext: String!
  wordcount: Int!
  workid: Work!
}

type Wordform @pgTable(name: "wordform") {
  occurences: Int!
  phonetictext: String!
  plaintext: String!
  stemtext: String!
  id: Int! @pgColumn(name: "wordformid") @unique
}

type Work @pgTable(name: "work") {
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
  id: ID! @pgColumn(name: "workid") @unique
  year: Int!
}
