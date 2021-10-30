.class public Lcom/chartboost/sdk/impl/bs;
.super Lcom/chartboost/sdk/impl/cm;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/bu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/cm;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/cm;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/chartboost/sdk/impl/by;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
