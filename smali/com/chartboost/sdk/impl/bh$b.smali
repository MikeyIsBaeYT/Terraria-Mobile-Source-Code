.class public final enum Lcom/chartboost/sdk/impl/bh$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/bh$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum b:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum c:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum d:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum e:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum f:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum g:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum h:Lcom/chartboost/sdk/impl/bh$b;

.field public static final enum i:Lcom/chartboost/sdk/impl/bh$b;

.field private static final synthetic j:[Lcom/chartboost/sdk/impl/bh$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypePerspectiveRotate"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->a:Lcom/chartboost/sdk/impl/bh$b;

    .line 26
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeBounce"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->b:Lcom/chartboost/sdk/impl/bh$b;

    .line 27
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypePerspectiveZoom"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->c:Lcom/chartboost/sdk/impl/bh$b;

    .line 28
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeSlideFromTop"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->d:Lcom/chartboost/sdk/impl/bh$b;

    .line 29
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeSlideFromBottom"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->e:Lcom/chartboost/sdk/impl/bh$b;

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeFade"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->f:Lcom/chartboost/sdk/impl/bh$b;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeNone"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->g:Lcom/chartboost/sdk/impl/bh$b;

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeSlideFromLeft"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->h:Lcom/chartboost/sdk/impl/bh$b;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/impl/bh$b;

    const-string v1, "CBAnimationTypeSlideFromRight"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->i:Lcom/chartboost/sdk/impl/bh$b;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/impl/bh$b;

    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->a:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->b:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->c:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->d:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/impl/bh$b;->e:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/impl/bh$b;->f:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/impl/bh$b;->g:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/impl/bh$b;->h:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/impl/bh$b;->i:Lcom/chartboost/sdk/impl/bh$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/impl/bh$b;->j:[Lcom/chartboost/sdk/impl/bh$b;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/chartboost/sdk/impl/bh$b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    if-lez p0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/impl/bh$b;->values()[Lcom/chartboost/sdk/impl/bh$b;

    move-result-object v1

    array-length v1, v1

    if-gt p0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/chartboost/sdk/impl/bh$b;->values()[Lcom/chartboost/sdk/impl/bh$b;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bh$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/chartboost/sdk/impl/bh$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/bh$b;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/bh$b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/chartboost/sdk/impl/bh$b;->j:[Lcom/chartboost/sdk/impl/bh$b;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/bh$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/bh$b;

    return-object v0
.end method
