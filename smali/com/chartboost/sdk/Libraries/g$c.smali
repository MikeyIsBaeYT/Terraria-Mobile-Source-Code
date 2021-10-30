.class Lcom/chartboost/sdk/Libraries/g$c;
.super Lcom/chartboost/sdk/Libraries/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/g$a;)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/g$b;-><init>(Lcom/chartboost/sdk/Libraries/g$1;)V

    .line 177
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$c;->a:Lcom/chartboost/sdk/Libraries/g$a;

    .line 178
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object must be an array of objects matching: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$c;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 181
    check-cast p1, Ljava/util/List;

    move v0, v1

    .line 182
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/g$c;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_1
    return v1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 186
    goto :goto_1

    .line 187
    :cond_3
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lorg/json/JSONArray;

    move v0, v1

    .line 189
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 190
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/g$c;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 193
    goto :goto_1
.end method
