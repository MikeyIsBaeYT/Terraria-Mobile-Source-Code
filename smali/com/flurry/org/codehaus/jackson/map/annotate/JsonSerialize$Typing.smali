.class public final enum Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

.field public static final enum DYNAMIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

.field public static final enum STATIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    const-string v1, "DYNAMIC"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->DYNAMIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    .line 213
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->DYNAMIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

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
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    return-object v0
.end method
