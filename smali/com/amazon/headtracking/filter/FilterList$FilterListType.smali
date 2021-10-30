.class public final enum Lcom/amazon/headtracking/filter/FilterList$FilterListType;
.super Ljava/lang/Enum;
.source "FilterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/headtracking/filter/FilterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/headtracking/filter/FilterList$FilterListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/headtracking/filter/FilterList$FilterListType;

.field public static final enum DEEP:Lcom/amazon/headtracking/filter/FilterList$FilterListType;

.field public static final enum STANDARD:Lcom/amazon/headtracking/filter/FilterList$FilterListType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    const-string v1, "DEEP"

    invoke-direct {v0, v1, v2}, Lcom/amazon/headtracking/filter/FilterList$FilterListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->DEEP:Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    .line 64
    new-instance v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v3}, Lcom/amazon/headtracking/filter/FilterList$FilterListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->STANDARD:Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    sget-object v1, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->DEEP:Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->STANDARD:Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->$VALUES:[Lcom/amazon/headtracking/filter/FilterList$FilterListType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/headtracking/filter/FilterList$FilterListType;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/headtracking/filter/FilterList$FilterListType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/amazon/headtracking/filter/FilterList$FilterListType;->$VALUES:[Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    invoke-virtual {v0}, [Lcom/amazon/headtracking/filter/FilterList$FilterListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/headtracking/filter/FilterList$FilterListType;

    return-object v0
.end method
