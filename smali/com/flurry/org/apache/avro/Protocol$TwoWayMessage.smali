.class Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;
.super Lcom/flurry/org/apache/avro/Protocol$Message;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoWayMessage"
.end annotation


# instance fields
.field private errors:Lcom/flurry/org/apache/avro/Schema;

.field private response:Lcom/flurry/org/apache/avro/Schema;

.field final synthetic this$0:Lcom/flurry/org/apache/avro/Protocol;


# direct methods
.method private constructor <init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "doc"    # Ljava/lang/String;
    .param p5, "request"    # Lcom/flurry/org/apache/avro/Schema;
    .param p6, "response"    # Lcom/flurry/org/apache/avro/Schema;
    .param p7, "errors"    # Lcom/flurry/org/apache/avro/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p4, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->this$0:Lcom/flurry/org/apache/avro/Protocol;

    .line 167
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/org/apache/avro/Protocol$Message;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V

    .line 168
    iput-object p6, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    .line 169
    iput-object p7, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Protocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flurry/org/apache/avro/Protocol;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Lcom/flurry/org/apache/avro/Schema;
    .param p6, "x5"    # Lcom/flurry/org/apache/avro/Schema;
    .param p7, "x6"    # Lcom/flurry/org/apache/avro/Schema;
    .param p8, "x7"    # Lcom/flurry/org/apache/avro/Protocol$1;

    .prologue
    .line 160
    invoke-direct/range {p0 .. p7}, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;-><init>(Lcom/flurry/org/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/Protocol$Message;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    instance-of v2, p1, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;

    .line 180
    .local v0, "that":Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, v0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v2, v3}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getErrors()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public getResponse()Lcom/flurry/org/apache/avro/Schema;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/flurry/org/apache/avro/Protocol$Message;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isOneWay()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method toJson1(Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V
    .locals 5
    .param p1, "gen"    # Lcom/flurry/org/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 189
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->response:Lcom/flurry/org/apache/avro/Schema;

    iget-object v3, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->this$0:Lcom/flurry/org/apache/avro/Protocol;

    invoke-static {v3}, Lcom/flurry/org/apache/avro/Protocol;->access$100(Lcom/flurry/org/apache/avro/Protocol;)Lcom/flurry/org/apache/avro/Schema$Names;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 192
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->errors:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "errs":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Schema;->createUnion(Ljava/util/List;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v1

    .line 195
    .local v1, "union":Lcom/flurry/org/apache/avro/Schema;
    const-string v2, "errors"

    invoke-virtual {p1, v2}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/flurry/org/apache/avro/Protocol$TwoWayMessage;->this$0:Lcom/flurry/org/apache/avro/Protocol;

    invoke-static {v2}, Lcom/flurry/org/apache/avro/Protocol;->access$100(Lcom/flurry/org/apache/avro/Protocol;)Lcom/flurry/org/apache/avro/Schema$Names;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/flurry/org/apache/avro/Schema;->toJson(Lcom/flurry/org/apache/avro/Schema$Names;Lcom/flurry/org/codehaus/jackson/JsonGenerator;)V

    .line 198
    .end local v1    # "union":Lcom/flurry/org/apache/avro/Schema;
    :cond_0
    return-void
.end method
