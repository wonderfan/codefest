# RIG

## Eternal AI

The enum type is created to accept the response after client sends the request to api endpoint. Two variants are defined in the enum type which can process success and error situations. Each embedding model is a constant variable. The response structure is declared to accept the response. 

Crate level document is added through comment. Code units are introduced into current scope by use keyword. Since the external url is known, it is defined as constant variable which is str type of fixed length data. The http client is needed to send request to external ai site. The client structure is wrapped on the http client with additional URL field. The static and instance methods are bound in the implementation block. The input parameter makes use of fixed length string slice type. The field type in the structure can be assigned dynamic string type. The factory function is provided to create embedding model. The number of dimensions are specified when creating embedding model. The commpletion model factory is offered to produce the instance of completion model.
