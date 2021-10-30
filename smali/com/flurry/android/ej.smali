.class final Lcom/flurry/android/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/AppCloudResponseRequestManagerHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(Lcom/flurry/android/AppCloudResponse;Lcom/flurry/android/AppCloudResponseHandler;Lcom/flurry/android/gq;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/AppCloudResponse;",
            "Lcom/flurry/android/AppCloudResponseHandler;",
            "Lcom/flurry/android/gq;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p1, p2, p3, p4}, Lcom/flurry/android/FlurryAppCloudRequestManager;->a(Lcom/flurry/android/AppCloudResponse;Lcom/flurry/android/AppCloudResponseHandler;Lcom/flurry/android/gq;Ljava/util/HashMap;)V

    .line 129
    return-void
.end method
