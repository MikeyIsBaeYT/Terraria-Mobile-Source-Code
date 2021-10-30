.class public Lcom/amazon/device/iap/internal/util/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# static fields
.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "exceptionMessage"

.field private static final JSON_STRING:Ljava/lang/String; = "jsonString"

.field private static final RECEIPT_VERIFICATION_FAILED_METRIC:Ljava/lang/String; = "IapReceiptVerificationFailed"

.field private static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final STRING_TO_SIGN:Ljava/lang/String; = "stringToSign"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/amazon/device/iap/internal/util/MetricsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/iap/internal/util/MetricsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static submitMetric(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/amazon/device/iap/internal/b/h/a;

    new-instance v1, Lcom/amazon/device/iap/internal/b/e;

    invoke-static {p0}, Lcom/amazon/device/iap/model/RequestId;->fromString(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/device/iap/internal/b/e;-><init>(Lcom/amazon/device/iap/model/RequestId;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/device/iap/internal/b/h/a;-><init>(Lcom/amazon/device/iap/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/iap/internal/b/h/a;->a_()V

    .line 23
    return-void
.end method

.method public static submitReceiptVerificationFailureMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    const-string v1, "stringToSign"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "signature"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "IapReceiptVerificationFailed"

    invoke-static {p0, v1, v0}, Lcom/amazon/device/iap/internal/util/MetricsHelper;->submitMetric(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lcom/amazon/device/iap/internal/util/MetricsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error calling submitMetric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/device/iap/internal/util/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
