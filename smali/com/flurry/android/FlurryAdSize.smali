.class public final enum Lcom/flurry/android/FlurryAdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/FlurryAdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

.field public static final enum BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

.field public static final enum FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

.field private static final synthetic dP:[Lcom/flurry/android/FlurryAdSize;


# instance fields
.field private dO:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18
    new-instance v0, Lcom/flurry/android/FlurryAdSize;

    const-string v1, "BANNER_TOP"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/android/FlurryAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    .line 19
    new-instance v0, Lcom/flurry/android/FlurryAdSize;

    const-string v1, "BANNER_BOTTOM"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    .line 20
    new-instance v0, Lcom/flurry/android/FlurryAdSize;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v3, v5}, Lcom/flurry/android/FlurryAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    .line 16
    new-array v0, v5, [Lcom/flurry/android/FlurryAdSize;

    sget-object v1, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/android/FlurryAdSize;->dP:[Lcom/flurry/android/FlurryAdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/flurry/android/FlurryAdSize;->dO:I

    .line 27
    return-void
.end method

.method static a(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/FlurryAdSize;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/flurry/android/AdSpaceLayout;->getAlignment()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurryAdSize;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/flurry/android/FlurryAdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdSize;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/FlurryAdSize;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->dP:[Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurryAdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurryAdSize;

    return-object v0
.end method


# virtual methods
.method final getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/flurry/android/FlurryAdSize;->dO:I

    return v0
.end method
