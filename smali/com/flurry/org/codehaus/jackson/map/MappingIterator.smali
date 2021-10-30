.class public Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final EMPTY_ITERATOR:Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _closeParser:Z

.field protected final _context:Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

.field protected final _deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _hasNextChecked:Z

.field protected _parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

.field protected final _type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

.field protected final _updatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 18
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->EMPTY_ITERATOR:Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 7
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p3, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    .local p4, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;-><init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/type/JavaType;Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;ZLjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .param p2, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p3, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .param p5, "closeParser"    # Z
    .param p6, "valueToUpdate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            "Lcom/flurry/org/codehaus/jackson/JsonParser;",
            "Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer",
            "<*>;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    .local p4, "deser":Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_type:Lcom/flurry/org/codehaus/jackson/type/JavaType;

    .line 62
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 63
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    .line 64
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    .line 69
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->START_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getParsingContext()Lcom/flurry/org/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    .line 72
    .local v0, "sc":Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonStreamContext;->inRoot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 76
    .end local v0    # "sc":Lcom/flurry/org/codehaus/jackson/JsonStreamContext;
    :cond_0
    iput-boolean p5, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_closeParser:Z

    .line 77
    if-nez p6, :cond_1

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-object p6, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected static emptyIterator()Lcom/flurry/org/codehaus/jackson/map/MappingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/flurry/org/codehaus/jackson/map/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->EMPTY_ITERATOR:Lcom/flurry/org/codehaus/jackson/map/MappingIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 99
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->hasNextValue()Z
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;)V

    throw v1

    .line 102
    .end local v0    # "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNextValue()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    if-nez v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    if-nez v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 140
    .local v1, "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    iput-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    .line 141
    if-nez v1, :cond_3

    .line 142
    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v4}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 144
    if-nez v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 146
    .local v0, "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    .line 147
    iget-boolean v3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_closeParser:Z

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->close()V

    goto :goto_0

    .line 155
    .end local v0    # "jp":Lcom/flurry/org/codehaus/jackson/JsonParser;
    :cond_2
    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v1, v4, :cond_0

    .end local v1    # "t":Lcom/flurry/org/codehaus/jackson/JsonToken;
    :cond_3
    move v2, v3

    .line 160
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/flurry/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/flurry/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;)V

    throw v1

    .line 114
    .end local v0    # "e":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->hasNextValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 174
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_hasNextChecked:Z

    .line 177
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->clearCurrentToken()V

    .line 185
    return-object v0

    .line 180
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_deserializer:Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_parser:Lcom/flurry/org/codehaus/jackson/JsonParser;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_context:Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/MappingIterator;->_updatedValue:Ljava/lang/Object;

    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/MappingIterator;, "Lcom/flurry/org/codehaus/jackson/map/MappingIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
