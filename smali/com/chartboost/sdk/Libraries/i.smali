.class public final Lcom/chartboost/sdk/Libraries/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/i;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static a(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 124
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Ljava/math/BigDecimal;

    .line 140
    :goto_0
    return-object p0

    .line 126
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0

    .line 128
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 130
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    .line 131
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 132
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    move-object p0, v0

    goto :goto_0

    .line 135
    :cond_5
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sget-object v1, Lcom/chartboost/sdk/Libraries/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given number (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have a parsable string representation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 120
    if-eqz p0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 70
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    .line 44
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    :cond_2
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 54
    check-cast v0, Lorg/json/JSONObject;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 57
    :cond_4
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_5

    .line 58
    check-cast v0, Lorg/json/JSONArray;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 62
    :cond_5
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 66
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 76
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 85
    if-nez v5, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v4

    .line 87
    goto :goto_0

    :cond_2
    move v2, v3

    .line 89
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 90
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 99
    const-class v6, Ljava/lang/Number;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Ljava/lang/Number;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    :cond_4
    instance-of v6, v0, Lorg/json/JSONObject;

    if-eqz v6, :cond_6

    .line 104
    check-cast v0, Lorg/json/JSONObject;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 107
    :cond_6
    instance-of v6, v0, Lorg/json/JSONArray;

    if-eqz v6, :cond_7

    .line 108
    check-cast v0, Lorg/json/JSONArray;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 112
    :cond_7
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_8
    move v3, v4

    .line 116
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    if-eqz p0, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v1, :cond_4

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    :cond_1
    move v1, v3

    :goto_0
    move v3, v1

    .line 155
    :cond_2
    :goto_1
    return v3

    :cond_3
    move v1, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    goto :goto_1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    sget-object v1, Lcom/chartboost/sdk/Libraries/i;->a:Ljava/lang/String;

    const-string v2, "Error comparing big decimal values"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method
