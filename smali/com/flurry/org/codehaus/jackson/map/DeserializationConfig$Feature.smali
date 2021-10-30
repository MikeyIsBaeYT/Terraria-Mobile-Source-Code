.class public final enum Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
.super Ljava/lang/Enum;
.source "DeserializationConfig.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;",
        ">;",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_ANNOTATIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;


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

    .line 66
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "USE_ANNOTATIONS"

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 82
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "AUTO_DETECT_SETTERS"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 98
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "AUTO_DETECT_CREATORS"

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 115
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v1, v6, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 133
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v1, v7, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 143
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 165
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 183
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 197
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 213
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "READ_ENUMS_USING_TO_STRING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 238
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 253
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "FAIL_ON_NULL_FOR_PRIMITIVES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 271
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "FAIL_ON_NUMBERS_FOR_ENUMS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 291
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "WRAP_EXCEPTIONS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 310
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 322
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "UNWRAP_ROOT_VALUE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 341
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const-string v1, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->READ_ENUMS_USING_TO_STRING:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->UNWRAP_ROOT_VALUE:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

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
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 348
    iput-boolean p3, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->_defaultState:Z

    .line 349
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->_defaultState:Z

    return v0
.end method

.method public getMask()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
