.class Lcom/chartboost/sdk/InPlay/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/InPlay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/InPlay/a;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$a;->a:Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/a$1;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/InPlay/a$a;-><init>(Lcom/chartboost/sdk/InPlay/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/s;)V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bitmap download failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/s;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    return-void
.end method
