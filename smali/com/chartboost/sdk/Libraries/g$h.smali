.class Lcom/chartboost/sdk/Libraries/g$h;
.super Lcom/chartboost/sdk/Libraries/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/g$a;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    .line 346
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    const-string v0, "object must equal one of the following: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 364
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 368
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 348
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/g$h;->a:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 350
    if-nez p1, :cond_1

    .line 351
    if-nez v3, :cond_2

    move v1, v2

    .line 358
    :cond_0
    :goto_1
    return v1

    .line 354
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 355
    goto :goto_1

    .line 348
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
