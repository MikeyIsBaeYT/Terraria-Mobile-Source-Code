.class Lcom/chartboost/sdk/Libraries/g$m;
.super Lcom/chartboost/sdk/Libraries/g$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Libraries/g$a;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/g$l;-><init>(Lcom/chartboost/sdk/Libraries/g$1;)V

    .line 146
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$m;->a:Lcom/chartboost/sdk/Libraries/g$a;

    .line 147
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "object must be either null or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$m;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/chartboost/sdk/Libraries/g$l;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$m;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
