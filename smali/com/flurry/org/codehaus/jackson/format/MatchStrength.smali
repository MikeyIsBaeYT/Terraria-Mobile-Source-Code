.class public final enum Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
.super Ljava/lang/Enum;
.source "MatchStrength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/format/MatchStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field public static final enum FULL_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field public static final enum INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field public static final enum NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field public static final enum SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

.field public static final enum WEAK_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 27
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const-string v1, "INCONCLUSIVE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 39
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const-string v1, "WEAK_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 50
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const-string v1, "SOLID_MATCH"

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 62
    new-instance v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    const-string v1, "FULL_MATCH"

    invoke-direct {v0, v1, v6}, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->FULL_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->FULL_MATCH:Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->$VALUES:[Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/format/MatchStrength;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->$VALUES:[Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/format/MatchStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/format/MatchStrength;

    return-object v0
.end method
