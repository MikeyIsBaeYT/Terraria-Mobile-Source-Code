.class public final enum Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBImpressionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$CBImpressionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field private static final synthetic a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 11
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "TOO_MANY_CONNECTIONS"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "WRONG_ORIENTATION"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 15
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "FIRST_SESSION_INTERSTITIALS_DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 17
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NETWORK_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 19
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NO_AD_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 21
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "SESSION_NOT_STARTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 23
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "IMPRESSION_ALREADY_VISIBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 25
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NO_HOST_ACTIVITY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 27
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "USER_CANCELLATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 29
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INVALID_LOCATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "VIDEO_UNAVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "VIDEO_ID_MISSING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 35
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_PLAYING_VIDEO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 37
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INVALID_RESPONSE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 39
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ASSETS_DOWNLOAD_FAILURE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_CREATING_VIEW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 43
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_DISPLAYING_VIEW"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 45
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INCOMPATIBLE_API_VERSION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 5
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method
