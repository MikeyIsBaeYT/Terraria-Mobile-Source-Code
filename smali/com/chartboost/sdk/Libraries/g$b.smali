.class Lcom/chartboost/sdk/Libraries/g$b;
.super Lcom/chartboost/sdk/Libraries/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/g$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/Libraries/g$1;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "object must be an array."

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 164
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
