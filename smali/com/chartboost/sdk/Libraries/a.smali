.class public interface abstract Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/g$a;

    const/4 v1, 0x0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->b()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/chartboost/sdk/Libraries/a$1;

    invoke-direct {v2}, Lcom/chartboost/sdk/Libraries/a$1;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    return-void
.end method
