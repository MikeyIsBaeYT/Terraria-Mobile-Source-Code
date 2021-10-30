.class public Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;
.super Ljava/lang/Object;
.source "TypeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    }
.end annotation


# instance fields
.field final _factory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    .line 20
    return-void
.end method


# virtual methods
.method protected _problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "tokens"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->getAllInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (remaining: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->getRemainingInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "tokens"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 78
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 79
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 81
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not locate class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public parse(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 3
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "tokens":Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->parseType(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 29
    .local v1, "type":Lcom/flurry/org/codehaus/jackson/type/JavaType;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "Unexpected tokens after complete type"

    invoke-virtual {p0, v0, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 32
    :cond_0
    return-object v1
.end method

.method protected parseType(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/flurry/org/codehaus/jackson/type/JavaType;
    .locals 4
    .param p1, "tokens"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const-string v2, "Unexpected end-of-string"

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->findClass(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "base":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "token":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->parseTypes(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 51
    .end local v1    # "token":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 49
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->pushBack(Ljava/lang/String;)V

    .line 51
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/map/type/TypeBindings;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseTypes(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/util/List;
    .locals 4
    .param p1, "tokens"    # Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flurry/org/codehaus/jackson/type/JavaType;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->parseType(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/flurry/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    :cond_1
    const-string v2, "Unexpected end-of-string"

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "token":Ljava/lang/String;
    const-string v2, ">"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 63
    :cond_3
    const-string v2, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \',\' or \'>\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/flurry/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/flurry/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method
