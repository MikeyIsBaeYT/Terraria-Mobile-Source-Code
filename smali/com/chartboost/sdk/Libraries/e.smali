.class public Lcom/chartboost/sdk/Libraries/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/e$a;,
        Lcom/chartboost/sdk/Libraries/e$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/Libraries/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Ljava/util/Map;

    .line 25
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/Libraries/e$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static varargs a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 57
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 58
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e$b;->a(Lcom/chartboost/sdk/Libraries/e$b;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e$b;->b(Lcom/chartboost/sdk/Libraries/e$b;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$b;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Libraries/e$b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_0

    move-object v0, v2

    .line 100
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 88
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 90
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 95
    :cond_1
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_2
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 92
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 93
    :cond_3
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 94
    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v4, "CBJSON"

    const-string v5, "error converting json"

    invoke-static {v4, v5, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 100
    goto :goto_0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p0, :cond_0

    move-object v0, v2

    .line 123
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 108
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    instance-of v5, v1, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 113
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 118
    :cond_1
    :goto_2
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "CBJSON"

    const-string v5, "error converting json"

    invoke-static {v1, v5, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    :cond_2
    :try_start_1
    instance-of v5, v1, Lorg/json/JSONArray;

    if-eqz v5, :cond_3

    .line 115
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 116
    :cond_3
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 117
    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 123
    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 132
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 133
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 134
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    :cond_1
    :goto_2
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 135
    :cond_2
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 136
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2

    .line 137
    :cond_3
    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v3, "CBJSON"

    const-string v4, "error converting json"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 144
    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 151
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 155
    :try_start_0
    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 156
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 161
    :cond_1
    :goto_2
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v3, "CBJSON"

    const-string v4, "error converting json"

    invoke-static {v3, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :cond_2
    :try_start_1
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 158
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2

    .line 159
    :cond_3
    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 166
    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/chartboost/sdk/Libraries/e;->b:Ljava/lang/Runnable;

    return-object v0
.end method
