const { ApolloServer, gql } = require('apollo-server');

// The GraphQL schema
// https://graphql.org/learn/schema/
const typeDefs = gql`
  type FactTable {
    column1: ID
    column2: String
    column3: Int
    column4: Float
    column5: Boolean  
  }
  
  type FactTable2 {
    column1: ID
    column2: String
    column3: Int
    column4: Float
    column5: Boolean  
  }
  
  type Query {
    "Find dimensions from FactTable"
    dimensions: [FactTable]
    
    "Find dimensions from FactTable2"
    dimensions2: [FactTable2] 
  }
`;

const FactTable = [
    {
        column1: `id-${Date.now()}`,
        column2: 'string',
        column3: 3,
        column4: 4.0,
        column5: true
    }
]

const getData = (param) => {
    return [{
        column1: `id-${Date.now()}`,
        column2: param,
        column3: 3,
        column4: 4.0,
        column5: true
    }]
}

// A map of functions which return data for the schema.
// Keys of Query Object can be dimensions not defined yet
// Value of Query Object can be target fact tables
const resolvers = {
    Query: {
        dimensions: () => FactTable,
        dimensions2: () => getData('1'),
    },
};

const server = new ApolloServer({
    typeDefs,
    resolvers,
});

server.listen().then(({ url }) => {
    console.log(`🚀 Server ready at ${url}`);
});