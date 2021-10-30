.class public final enum Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
.super Ljava/lang/Enum;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum ALTERNATIVE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum EXPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum ROOT:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum SEQUENCE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public static final enum TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "TERMINAL"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 41
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ROOT:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 43
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "SEQUENCE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->SEQUENCE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 45
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "REPEATER"

    invoke-direct {v0, v1, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 47
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "ALTERNATIVE"

    invoke-direct {v0, v1, v7}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ALTERNATIVE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 49
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "IMPLICIT_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 51
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    const-string v1, "EXPLICIT_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ROOT:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->SEQUENCE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->ALTERNATIVE:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->$VALUES:[Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->$VALUES:[Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    invoke-virtual {v0}, [Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    return-object v0
.end method
