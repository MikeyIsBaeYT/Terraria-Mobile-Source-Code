.class public Lcom/chartboost/sdk/impl/db;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/db$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Lcom/chartboost/sdk/impl/db$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/db$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    return-object p1
.end method
