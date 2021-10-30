.class public abstract enum Lcom/chartboost/sdk/impl/da$h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/da$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/da$h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/da$h$a;

.field public static final enum b:Lcom/chartboost/sdk/impl/da$h$a;

.field private static final synthetic c:[Lcom/chartboost/sdk/impl/da$h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    new-instance v0, Lcom/chartboost/sdk/impl/da$h$a$1;

    const-string v1, "STABLE"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/da$h$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/da$h$a;->a:Lcom/chartboost/sdk/impl/da$h$a;

    .line 577
    new-instance v0, Lcom/chartboost/sdk/impl/da$h$a$2;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/da$h$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/da$h$a;->b:Lcom/chartboost/sdk/impl/da$h$a;

    .line 570
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/da$h$a;

    sget-object v1, Lcom/chartboost/sdk/impl/da$h$a;->a:Lcom/chartboost/sdk/impl/da$h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/da$h$a;->b:Lcom/chartboost/sdk/impl/da$h$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/chartboost/sdk/impl/da$h$a;->c:[Lcom/chartboost/sdk/impl/da$h$a;

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
    .line 570
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/chartboost/sdk/impl/da$1;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/da$h$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/da$h$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    const-class v0, Lcom/chartboost/sdk/impl/da$h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/da$h$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/da$h$a;
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/chartboost/sdk/impl/da$h$a;->c:[Lcom/chartboost/sdk/impl/da$h$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/da$h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/da$h$a;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/chartboost/sdk/impl/da;)Lcom/chartboost/sdk/impl/da$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(",
            "Lcom/chartboost/sdk/impl/da",
            "<TK;TV;TM;>;)",
            "Lcom/chartboost/sdk/impl/da$h",
            "<TK;TV;>;"
        }
    .end annotation
.end method
