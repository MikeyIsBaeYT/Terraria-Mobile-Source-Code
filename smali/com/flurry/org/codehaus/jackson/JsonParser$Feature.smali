.class public final enum Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_NUMERIC_LEADING_ZEROS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

.field public static final enum INTERN_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 86
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 102
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 120
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 137
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 152
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 168
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 186
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 205
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "INTERN_FIELD_NAMES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 215
    new-instance v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "defaultState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput-boolean p3, p0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    .line 239
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "flags":I
    invoke-static {}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->values()[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    move-result-object v0

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 230
    .local v1, "f":Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 229
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "f":Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->$VALUES:[Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMask()I
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
