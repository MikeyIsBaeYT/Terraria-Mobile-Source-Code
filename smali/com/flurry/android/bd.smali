.class final Lcom/flurry/android/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseHandler;


# instance fields
.field private synthetic dg:Ljava/lang/String;

.field private synthetic dh:J

.field private synthetic di:Lcom/flurry/android/bv;


# direct methods
.method constructor <init>(Lcom/flurry/android/bv;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 275
    iput-object p1, p0, Lcom/flurry/android/bd;->di:Lcom/flurry/android/bv;

    iput-object p2, p0, Lcom/flurry/android/bd;->dg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/flurry/android/bd;->dh:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/flurry/android/bd;->di:Lcom/flurry/android/bv;

    iget-object v1, p0, Lcom/flurry/android/bd;->dg:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/flurry/android/bv;->a(Lcom/flurry/android/bv;Lcom/flurry/android/AppCloudResponse;Ljava/lang/String;)Z

    .line 281
    iget-object v0, p0, Lcom/flurry/android/bd;->di:Lcom/flurry/android/bv;

    iget-object v1, p0, Lcom/flurry/android/bd;->dg:Ljava/lang/String;

    iget-wide v2, p0, Lcom/flurry/android/bd;->dh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/bv;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    return-void
.end method
