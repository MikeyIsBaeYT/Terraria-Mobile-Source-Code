.class public final enum Lcom/chartboost/sdk/Chartboost$CBFramework;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Chartboost$CBFramework;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkFyber:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkMoPub:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field public static final enum CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static final synthetic b:[Lcom/chartboost/sdk/Chartboost$CBFramework;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkUnity"

    const-string v2, "Unity"

    invoke-direct {v0, v1, v4, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 73
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCorona"

    const-string v2, "Corona"

    invoke-direct {v0, v1, v5, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 74
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkAir"

    const-string v2, "AIR"

    invoke-direct {v0, v1, v6, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 75
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkGameSalad"

    const-string v2, "GameSalad"

    invoke-direct {v0, v1, v7, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 76
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCordova"

    const-string v2, "Cordova"

    invoke-direct {v0, v1, v8, v2}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 77
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCocoonJS"

    const/4 v2, 0x5

    const-string v3, "CocoonJS"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 78
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkCocos2dx"

    const/4 v2, 0x6

    const-string v3, "Cocos2dx"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 79
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkMoPub"

    const/4 v2, 0x7

    const-string v3, "MoPub"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkMoPub:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 80
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkFyber"

    const/16 v2, 0x8

    const-string v3, "Fyber"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkFyber:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 81
    new-instance v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBFrameworkPrime31Unreal"

    const/16 v2, 0x9

    const-string v3, "Prime31Unreal"

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/Chartboost$CBFramework;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCorona:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkGameSalad:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCordova:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocoonJS:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkMoPub:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkFyber:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkPrime31Unreal:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->b:[Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Chartboost$CBFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method


# virtual methods
.method public doesWrapperUseCustomBackgroundingBehavior()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesWrapperUseCustomShouldDisplayBehavior()Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkAir:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkCocos2dx:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$CBFramework;->a:Ljava/lang/String;

    return-object v0
.end method
