.class public Lcom/flurry/org/codehaus/jackson/JsonFactory;
.super Ljava/lang/Object;
.source "JsonFactory.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/Versioned;


# static fields
.field static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_PARSER_FEATURE_FLAGS:I

.field public static final FORMAT_NAME_JSON:Ljava/lang/String; = "JSON"

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

.field protected _generatorFeatures:I

.field protected _inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

.field protected _objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

.field protected _outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

.field protected _parserFeatures:I

.field protected _rootByteSymbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field protected _rootCharSymbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 71
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;-><init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .param p1, "oc"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->createRoot()Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 101
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;->createRoot()Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 121
    sget v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 126
    sget v0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 171
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-void
.end method


# virtual methods
.method protected _createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .locals 2
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "resourceManaged"    # Z

    .prologue
    .line 894
    new-instance v0, Lcom/flurry/org/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flurry/org/codehaus/jackson/io/IOContext;-><init>(Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected _createJsonGenerator(Ljava/io/Writer;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILcom/flurry/org/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V

    .line 846
    .local v0, "gen":Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/WriterBasedGenerator;->setCharacterEscapes(Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 849
    :cond_0
    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p2, p1}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createJsonParser(Ljava/io/Reader;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 6
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;

    iget v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    sget-object v5, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    return-object v0
.end method

.method protected _createJsonParser([BIILcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;[BII)V

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootByteSymbols:Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_rootCharSymbols:Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->constructParser(ILcom/flurry/org/codehaus/jackson/ObjectCodec;Lcom/flurry/org/codehaus/jackson/sym/BytesToNameCanonicalizer;Lcom/flurry/org/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8Generator;

    iget v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8Generator;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;ILcom/flurry/org/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V

    .line 866
    .local v0, "gen":Lcom/flurry/org/codehaus/jackson/impl/Utf8Generator;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/impl/Utf8Generator;->setCharacterEscapes(Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    .line 869
    :cond_0
    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    .param p3, "ctxt"    # Lcom/flurry/org/codehaus/jackson/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    if-ne p2, v0, :cond_0

    .line 876
    new-instance v0, Lcom/flurry/org/codehaus/jackson/io/UTF8Writer;

    invoke-direct {v0, p3, p1}, Lcom/flurry/org/codehaus/jackson/io/UTF8Writer;-><init>(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)V

    .line 879
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _getBufferRecycler()Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    .locals 4

    .prologue
    .line 905
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 906
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 908
    .local v0, "br":Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    :goto_0
    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    .end local v0    # "br":Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;-><init>()V

    .line 910
    .restart local v0    # "br":Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0

    .line 906
    .end local v0    # "br":Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/org/codehaus/jackson/util/BufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method protected _optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 932
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 935
    .end local v0    # "host":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public final configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 346
    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 351
    :goto_0
    return-object p0

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public final configure(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 240
    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 245
    :goto_0
    return-object p0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->disable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/File;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "enc"    # Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 748
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 749
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/flurry/org/codehaus/jackson/JsonEncoding;)V

    .line 750
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    if-ne p2, v3, :cond_1

    .line 752
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    if-eqz v3, :cond_0

    .line 753
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v3, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 755
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v3

    .line 762
    :goto_0
    return-object v3

    .line 757
    :cond_1
    invoke-virtual {p0, v1, p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v2

    .line 759
    .local v2, "w":Ljava/io/Writer;
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    if-eqz v3, :cond_2

    .line 760
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v3, v0, v2}, Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v2

    .line 762
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v3

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/flurry/org/codehaus/jackson/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 677
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    invoke-virtual {v0, p2}, Lcom/flurry/org/codehaus/jackson/io/IOContext;->setEncoding(Lcom/flurry/org/codehaus/jackson/JsonEncoding;)V

    .line 678
    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonEncoding;->UTF8:Lcom/flurry/org/codehaus/jackson/JsonEncoding;

    if-ne p2, v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v2, v0, p1}, Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 683
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 690
    :goto_0
    return-object v2

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/flurry/org/codehaus/jackson/JsonEncoding;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Ljava/io/Writer;

    move-result-object v1

    .line 687
    .local v1, "w":Ljava/io/Writer;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    if-eqz v2, :cond_2

    .line 688
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v1

    .line 690
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v2

    goto :goto_0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 711
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 504
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 506
    .local v1, "in":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 509
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    return-object v2
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 558
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 561
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 583
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 636
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "r":Ljava/io/Reader;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 640
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v1

    .line 643
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    return-object v2
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 530
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    .line 532
    .local v1, "in":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 535
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    return-object v2
.end method

.method public createJsonParser([B)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 596
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 598
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    array-length v3, p1

    invoke-virtual {v2, v0, p1, v4, v3}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;[BII)Ljava/io/InputStream;

    move-result-object v1

    .line 600
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 604
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    :cond_0
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser([BIILcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    goto :goto_0
.end method

.method public createJsonParser([BII)Lcom/flurry/org/codehaus/jackson/JsonParser;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/flurry/org/codehaus/jackson/io/IOContext;

    move-result-object v0

    .line 620
    .local v0, "ctxt":Lcom/flurry/org/codehaus/jackson/io/IOContext;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/io/InputDecorator;->decorate(Lcom/flurry/org/codehaus/jackson/io/IOContext;[BII)Ljava/io/InputStream;

    move-result-object v1

    .line 622
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0, v1, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 626
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_createJsonParser([BIILcom/flurry/org/codehaus/jackson/io/IOContext;)Lcom/flurry/org/codehaus/jackson/JsonParser;

    move-result-object v2

    goto :goto_0
.end method

.method public disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 373
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 374
    return-object p0
.end method

.method public disable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 266
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 267
    return-object p0
.end method

.method public final disableGeneratorFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->disable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 402
    return-void
.end method

.method public final disableParserFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->disable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 295
    return-void
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 362
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    .line 363
    return-object p0
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 255
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    .line 256
    return-object p0
.end method

.method public final enableGeneratorFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->enable(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 394
    return-void
.end method

.method public final enableParserFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->enable(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 287
    return-void
.end method

.method public getCharacterEscapes()Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    return-object v0
.end method

.method public getCodec()Lcom/flurry/org/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    if-ne v0, v1, :cond_0

    .line 195
    const-string v0, "JSON"

    .line 197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputDecorator()Lcom/flurry/org/codehaus/jackson/io/InputDecorator;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    return-object v0
.end method

.method public getOutputDecorator()Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    return-object v0
.end method

.method public hasFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 2
    .param p1, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/org/codehaus/jackson/JsonFactory;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->hasJSONFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasJSONFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 1
    .param p1, "acc"    # Lcom/flurry/org/codehaus/jackson/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/impl/ByteSourceBootstrapper;->hasJSONFormat(Lcom/flurry/org/codehaus/jackson/format/InputAccessor;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 383
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 276
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGeneratorFeatureEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->isEnabled(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public final isParserFeatureEnabled(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 310
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCharacterEscapes(Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "esc"    # Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_characterEscapes:Lcom/flurry/org/codehaus/jackson/io/CharacterEscapes;

    .line 438
    return-object p0
.end method

.method public setCodec(Lcom/flurry/org/codehaus/jackson/ObjectCodec;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "oc"    # Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_objectCodec:Lcom/flurry/org/codehaus/jackson/ObjectCodec;

    .line 476
    return-object p0
.end method

.method public final setGeneratorFeature(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->configure(Lcom/flurry/org/codehaus/jackson/JsonGenerator$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 410
    return-void
.end method

.method public setInputDecorator(Lcom/flurry/org/codehaus/jackson/io/InputDecorator;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "d"    # Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_inputDecorator:Lcom/flurry/org/codehaus/jackson/io/InputDecorator;

    .line 330
    return-object p0
.end method

.method public setOutputDecorator(Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;)Lcom/flurry/org/codehaus/jackson/JsonFactory;
    .locals 0
    .param p1, "d"    # Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/JsonFactory;->_outputDecorator:Lcom/flurry/org/codehaus/jackson/io/OutputDecorator;

    .line 458
    return-object p0
.end method

.method public final setParserFeature(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonFactory;->configure(Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;Z)Lcom/flurry/org/codehaus/jackson/JsonFactory;

    .line 303
    return-void
.end method

.method public version()Lcom/flurry/org/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lcom/flurry/org/codehaus/jackson/impl/Utf8Generator;

    invoke-static {v0}, Lcom/flurry/org/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
