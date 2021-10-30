.class Lcom/chartboost/sdk/InPlay/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/InPlay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chartboost/sdk/impl/n$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Lcom/chartboost/sdk/InPlay/CBInPlay;

.field final synthetic d:Lcom/chartboost/sdk/InPlay/a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/InPlay/a;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/a$b;->d:Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/a$1;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/InPlay/a$b;-><init>(Lcom/chartboost/sdk/InPlay/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/a$b;->d:Lcom/chartboost/sdk/InPlay/a;

    iget-object v1, p0, Lcom/chartboost/sdk/InPlay/a$b;->c:Lcom/chartboost/sdk/InPlay/CBInPlay;

    iget-object v2, p0, Lcom/chartboost/sdk/InPlay/a$b;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/chartboost/sdk/InPlay/a$b;->a:Z

    invoke-static {v0, v1, v2, v3}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/InPlay/a$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
