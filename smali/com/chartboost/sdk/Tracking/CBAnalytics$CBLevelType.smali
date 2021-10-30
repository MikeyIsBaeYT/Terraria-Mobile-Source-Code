.class public final enum Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Tracking/CBAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBLevelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field public static final enum OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

.field private static final synthetic b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 100
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "HIGHEST_LEVEL_REACHED"

    invoke-direct {v0, v1, v7, v3}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 101
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "CURRENT_AREA"

    invoke-direct {v0, v1, v3, v4}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 102
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "CHARACTER_LEVEL"

    invoke-direct {v0, v1, v4, v5}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 103
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "OTHER_SEQUENTIAL"

    invoke-direct {v0, v1, v5, v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 104
    new-instance v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    const-string v1, "OTHER_NONSEQUENTIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->HIGHEST_LEVEL_REACHED:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CURRENT_AREA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->CHARACTER_LEVEL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_SEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->OTHER_NONSEQUENTIAL:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->a:I

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->b:[Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;

    return-object v0
.end method


# virtual methods
.method public getLevelType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->a:I

    return v0
.end method
