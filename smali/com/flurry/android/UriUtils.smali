.class public final Lcom/flurry/android/UriUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final je:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/UriUtils;->je:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static N(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .prologue
    .line 242
    const/4 v6, 0x0

    .line 244
    :try_start_0
    new-instance v0, Ljava/net/URI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public static currentDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object p0

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/UriUtils;->N(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "./"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 104
    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object p0

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/UriUtils;->N(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    .line 117
    invoke-static {p1}, Lcom/flurry/android/UriUtils;->N(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v4

    .line 124
    invoke-virtual {v3}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 130
    if-nez v2, :cond_2

    if-nez v0, :cond_0

    .line 134
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :cond_3
    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 140
    if-nez v2, :cond_4

    if-nez v0, :cond_0

    .line 144
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :cond_5
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 151
    sget-object v5, Lcom/flurry/android/UriUtils;->je:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 152
    sget-object v0, Lcom/flurry/android/UriUtils;->je:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 154
    array-length v6, v5

    .line 155
    array-length v7, v2

    .line 157
    const/4 v0, 0x0

    .line 158
    :goto_1
    if-ge v0, v7, :cond_6

    if-ge v0, v6, :cond_6

    .line 159
    aget-object v8, v5, v0

    .line 160
    aget-object v9, v2, v0

    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_6
    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    if-ne v0, v7, :cond_9

    if-ne v0, v6, :cond_9

    .line 175
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 179
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 181
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    move-object v3, v1

    move-object v2, v1

    .line 221
    :cond_7
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1, v0, v2, v3}, Lcom/flurry/android/UriUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 185
    :cond_8
    if-eqz v0, :cond_e

    .line 186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v1

    .line 191
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 192
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    :goto_4
    move-object v3, v0

    .line 197
    goto :goto_2

    .line 198
    :cond_9
    add-int/lit8 v9, v6, -0x1

    .line 199
    add-int/lit8 v7, v7, -0x1

    move v4, v0

    .line 201
    :goto_5
    if-ge v4, v7, :cond_a

    .line 202
    const-string v10, ".."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 206
    :cond_a
    :goto_6
    if-ge v0, v9, :cond_b

    .line 207
    aget-object v4, v5, v0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 211
    :cond_b
    if-ge v0, v6, :cond_c

    .line 212
    aget-object v0, v5, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 216
    const-string v0, "."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    move-object v2, v0

    move-object v0, v3

    goto :goto_4

    :cond_e
    move-object v0, v2

    goto :goto_3
.end method

.method public static root(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object p0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/UriUtils;->N(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v1, v0, v2, v3, v3}, Lcom/flurry/android/UriUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
