.class public final enum Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;
.super Ljava/lang/Enum;
.source "GroupedListHeroWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/home/GroupedListHeroWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisualStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

.field public static final enum DEFAULT:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

.field public static final enum PEEKABLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

.field public static final enum SHOPPING:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

.field public static final enum SIMPLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->DEFAULT:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    .line 44
    new-instance v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    const-string v1, "PEEKABLE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->PEEKABLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    .line 45
    new-instance v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    const-string v1, "SHOPPING"

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->SHOPPING:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    .line 46
    new-instance v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    const-string v1, "SIMPLE"

    invoke-direct {v0, v1, v5}, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->SIMPLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    sget-object v1, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->DEFAULT:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->PEEKABLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->SHOPPING:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->SIMPLE:Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->$VALUES:[Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->$VALUES:[Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    invoke-virtual {v0}, [Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;

    return-object v0
.end method
