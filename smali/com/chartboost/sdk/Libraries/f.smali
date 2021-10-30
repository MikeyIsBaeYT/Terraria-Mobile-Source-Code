.class public final enum Lcom/chartboost/sdk/Libraries/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/f$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Libraries/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Libraries/f;

.field public static final enum b:Lcom/chartboost/sdk/Libraries/f;

.field public static final enum c:Lcom/chartboost/sdk/Libraries/f;

.field public static final enum d:Lcom/chartboost/sdk/Libraries/f;

.field public static final e:Lcom/chartboost/sdk/Libraries/f;

.field public static final f:Lcom/chartboost/sdk/Libraries/f;

.field public static final g:Lcom/chartboost/sdk/Libraries/f;

.field public static final h:Lcom/chartboost/sdk/Libraries/f;

.field private static final synthetic i:[Lcom/chartboost/sdk/Libraries/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Libraries/f;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    .line 15
    new-instance v0, Lcom/chartboost/sdk/Libraries/f;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 17
    new-instance v0, Lcom/chartboost/sdk/Libraries/f;

    const-string v1, "PORTRAIT_REVERSE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Libraries/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    .line 19
    new-instance v0, Lcom/chartboost/sdk/Libraries/f;

    const-string v1, "LANDSCAPE_REVERSE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Libraries/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/f;

    sget-object v1, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->i:[Lcom/chartboost/sdk/Libraries/f;

    .line 22
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->e:Lcom/chartboost/sdk/Libraries/f;

    .line 24
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/Libraries/f;

    .line 26
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->g:Lcom/chartboost/sdk/Libraries/f;

    .line 28
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    sput-object v0, Lcom/chartboost/sdk/Libraries/f;->h:Lcom/chartboost/sdk/Libraries/f;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/f;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/chartboost/sdk/Libraries/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/f;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Libraries/f;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->i:[Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Libraries/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Libraries/f;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Libraries/f;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/chartboost/sdk/Libraries/f$1;->a:[I

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->g:Lcom/chartboost/sdk/Libraries/f;

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->e:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->h:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
