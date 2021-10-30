.class final enum Lcom/chartboost/sdk/impl/cg$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/cg$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum b:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum c:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum d:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum e:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum f:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum g:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum h:Lcom/chartboost/sdk/impl/cg$a;

.field public static final enum i:Lcom/chartboost/sdk/impl/cg$a;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lcom/chartboost/sdk/impl/cg$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/chartboost/sdk/impl/cg$a;


# instance fields
.field public final j:I

.field public final k:C

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 134
    new-instance v0, Lcom/chartboost/sdk/impl/cg$a;

    const-string v1, "CANON_EQ"

    const/16 v3, 0x80

    const/16 v4, 0x63

    const-string v5, "Pattern.CANON_EQ"

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/impl/cg$a;->a:Lcom/chartboost/sdk/impl/cg$a;

    .line 135
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "UNIX_LINES"

    const/16 v7, 0x64

    const-string v8, "Pattern.UNIX_LINES"

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->b:Lcom/chartboost/sdk/impl/cg$a;

    .line 136
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "GLOBAL"

    const/16 v6, 0x100

    const/16 v7, 0x67

    move v5, v11

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->c:Lcom/chartboost/sdk/impl/cg$a;

    .line 137
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "CASE_INSENSITIVE"

    const/4 v5, 0x3

    const/16 v7, 0x69

    move v6, v11

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->d:Lcom/chartboost/sdk/impl/cg$a;

    .line 138
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "MULTILINE"

    const/16 v6, 0x8

    const/16 v7, 0x6d

    move v5, v12

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->e:Lcom/chartboost/sdk/impl/cg$a;

    .line 139
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "DOTALL"

    const/4 v5, 0x5

    const/16 v6, 0x20

    const/16 v7, 0x73

    const-string v8, "Pattern.DOTALL"

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->f:Lcom/chartboost/sdk/impl/cg$a;

    .line 140
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "LITERAL"

    const/4 v5, 0x6

    const/16 v6, 0x10

    const/16 v7, 0x74

    const-string v8, "Pattern.LITERAL"

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->g:Lcom/chartboost/sdk/impl/cg$a;

    .line 141
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "UNICODE_CASE"

    const/4 v5, 0x7

    const/16 v6, 0x40

    const/16 v7, 0x75

    const-string v8, "Pattern.UNICODE_CASE"

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->h:Lcom/chartboost/sdk/impl/cg$a;

    .line 142
    new-instance v3, Lcom/chartboost/sdk/impl/cg$a;

    const-string v4, "COMMENTS"

    const/16 v5, 0x8

    const/16 v7, 0x78

    move v6, v12

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/cg$a;-><init>(Ljava/lang/String;IICLjava/lang/String;)V

    sput-object v3, Lcom/chartboost/sdk/impl/cg$a;->i:Lcom/chartboost/sdk/impl/cg$a;

    .line 133
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/impl/cg$a;

    sget-object v1, Lcom/chartboost/sdk/impl/cg$a;->a:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/cg$a;->b:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/chartboost/sdk/impl/cg$a;->c:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v1, v0, v11

    const/4 v1, 0x3

    sget-object v3, Lcom/chartboost/sdk/impl/cg$a;->d:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/chartboost/sdk/impl/cg$a;->e:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v3, Lcom/chartboost/sdk/impl/cg$a;->f:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/chartboost/sdk/impl/cg$a;->g:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/chartboost/sdk/impl/cg$a;->h:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/chartboost/sdk/impl/cg$a;->i:Lcom/chartboost/sdk/impl/cg$a;

    aput-object v3, v0, v1

    sput-object v0, Lcom/chartboost/sdk/impl/cg$a;->n:[Lcom/chartboost/sdk/impl/cg$a;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/cg$a;->m:Ljava/util/Map;

    .line 147
    invoke-static {}, Lcom/chartboost/sdk/impl/cg$a;->values()[Lcom/chartboost/sdk/impl/cg$a;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 148
    sget-object v4, Lcom/chartboost/sdk/impl/cg$a;->m:Ljava/util/Map;

    iget-char v5, v3, Lcom/chartboost/sdk/impl/cg$a;->k:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IICLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IC",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/chartboost/sdk/impl/cg$a;->j:I

    .line 161
    iput-char p4, p0, Lcom/chartboost/sdk/impl/cg$a;->k:C

    .line 162
    iput-object p5, p0, Lcom/chartboost/sdk/impl/cg$a;->l:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/cg$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/chartboost/sdk/impl/cg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/cg$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/cg$a;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/chartboost/sdk/impl/cg$a;->n:[Lcom/chartboost/sdk/impl/cg$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/cg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/cg$a;

    return-object v0
.end method
