.class public Lcom/chartboost/sdk/impl/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/cg$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field static final f:Ljava/util/logging/Logger;

.field static g:Lcom/chartboost/sdk/impl/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/dd",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/impl/cn;",
            ">;>;"
        }
    .end annotation
.end field

.field static h:Lcom/chartboost/sdk/impl/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/dd",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/impl/cn;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static i:Ljava/nio/charset/Charset;

.field static j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/chartboost/sdk/impl/ci;",
            ">;"
        }
    .end annotation
.end field

.field static k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/chartboost/sdk/impl/ch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "org.bson.BSON"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->f:Ljava/util/logging/Logger;

    .line 292
    sput-boolean v1, Lcom/chartboost/sdk/impl/cg;->a:Z

    .line 293
    sput-boolean v1, Lcom/chartboost/sdk/impl/cg;->b:Z

    .line 294
    new-instance v0, Lcom/chartboost/sdk/impl/dd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/dd;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->g:Lcom/chartboost/sdk/impl/dd;

    .line 297
    new-instance v0, Lcom/chartboost/sdk/impl/dd;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/dd;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->h:Lcom/chartboost/sdk/impl/dd;

    .line 300
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->i:Ljava/nio/charset/Charset;

    .line 319
    new-instance v0, Lcom/chartboost/sdk/impl/cg$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cg$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->j:Ljava/lang/ThreadLocal;

    .line 325
    new-instance v0, Lcom/chartboost/sdk/impl/cg$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cg$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/cg;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/chartboost/sdk/impl/cg;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    return-object p0

    .line 200
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/cg;->g:Lcom/chartboost/sdk/impl/dd;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/dd;->a()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 202
    sget-object v0, Lcom/chartboost/sdk/impl/cg;->g:Lcom/chartboost/sdk/impl/dd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/dd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/cn;

    .line 205
    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/cn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-static {}, Lcom/chartboost/sdk/impl/cg$a;->values()[Lcom/chartboost/sdk/impl/cg$a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    move v0, p0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 121
    iget v6, v5, Lcom/chartboost/sdk/impl/cg$a;->j:I

    and-int/2addr v6, v0

    if-lez v6, :cond_0

    .line 122
    iget-char v6, v5, Lcom/chartboost/sdk/impl/cg$a;->k:C

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget v5, v5, Lcom/chartboost/sdk/impl/cg$a;->j:I

    sub-int/2addr v0, v5

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    if-lez v0, :cond_2

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "some flags could not be recognized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/chartboost/sdk/impl/cg;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/impl/cg;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
