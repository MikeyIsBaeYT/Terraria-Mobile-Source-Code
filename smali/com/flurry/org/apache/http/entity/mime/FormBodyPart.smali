.class public Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

.field private final header:Lcom/flurry/org/apache/http/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->body:Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    .line 56
    new-instance v0, Lcom/flurry/org/apache/http/entity/mime/Header;

    invoke-direct {v0}, Lcom/flurry/org/apache/http/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->header:Lcom/flurry/org/apache/http/entity/mime/Header;

    .line 58
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->generateContentDisp(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->generateContentType(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->generateTransferEncoding(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->header:Lcom/flurry/org/apache/http/entity/mime/Header;

    new-instance v1, Lcom/flurry/org/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/flurry/org/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/http/entity/mime/Header;->addField(Lcom/flurry/org/apache/http/entity/mime/MinimalField;)V

    .line 80
    return-void
.end method

.method protected generateContentDisp(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .param p1, "body"    # Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected generateContentType(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .param p1, "body"    # Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected generateTransferEncoding(Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .param p1, "body"    # Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 106
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getBody()Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->body:Lcom/flurry/org/apache/http/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/flurry/org/apache/http/entity/mime/Header;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->header:Lcom/flurry/org/apache/http/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/org/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
