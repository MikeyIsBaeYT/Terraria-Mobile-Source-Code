.class public Lcom/chartboost/sdk/impl/df$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/impl/da$h$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/chartboost/sdk/impl/da$h$a;->a:Lcom/chartboost/sdk/impl/da$h$a;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/df$a;->a:Lcom/chartboost/sdk/impl/da$h$a;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/df$a;->b:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/df;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chartboost/sdk/impl/df",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/chartboost/sdk/impl/df$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/df$a;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/df$a;->a:Lcom/chartboost/sdk/impl/da$h$a;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/df$b;-><init>(Ljava/util/Map;Lcom/chartboost/sdk/impl/da$h$a;)V

    return-object v0
.end method
