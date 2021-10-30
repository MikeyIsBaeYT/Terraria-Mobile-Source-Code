.class public final Lcom/chartboost/sdk/Libraries/CBUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static final b:Ljavax/security/auth/x500/X500Principal;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    .line 47
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->b:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 2

    .prologue
    .line 139
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "CBUtility"

    const-string v1, "The context must be set through the Chartboost method onCreate() before modifying or accessing preferences."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cbPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_0

    const-string v0, ""

    .line 128
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 115
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    if-eqz v0, :cond_3

    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    if-eqz v3, :cond_4

    const-string v0, "UTF-8"

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "CBUtility"

    const-string v2, "This method requires UTF-8 encoding support"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_3
    :try_start_1
    const-string v0, ""

    goto :goto_2

    .line 121
    :cond_4
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 270
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBUtility;->c:Landroid/os/Handler;

    .line 271
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "CBUtility"

    const-string v2, "Exception raised calling entity.consumeContent()"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)V
    .locals 3

    .prologue
    .line 231
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "CBUtility"

    const-string v2, "Exception raised calling consumeQuietly over http response"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 82
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 87
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    move v1, v2

    .line 89
    :goto_0
    :try_start_1
    array-length v0, v4

    if-ge v3, v0, :cond_3

    .line 90
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 91
    new-instance v5, Ljava/io/ByteArrayInputStream;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 93
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v5, Lcom/chartboost/sdk/Libraries/CBUtility;->b:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 102
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 103
    :goto_2
    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    .line 105
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 89
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 102
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Lcom/chartboost/sdk/Libraries/f;
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 149
    invoke-static {}, Lcom/chartboost/sdk/b;->v()Landroid/content/Context;

    move-result-object v5

    .line 150
    const-string v0, "window"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 153
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 156
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    if-ne v7, v8, :cond_1

    move v0, v3

    .line 168
    :goto_0
    if-ne v0, v1, :cond_3

    move v0, v1

    .line 183
    :goto_1
    if-eqz v6, :cond_0

    if-ne v6, v4, :cond_6

    .line 189
    :cond_0
    :goto_2
    if-eqz v0, :cond_8

    .line 190
    packed-switch v6, :pswitch_data_0

    .line 199
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->a:Lcom/chartboost/sdk/Libraries/f;

    .line 211
    :goto_3
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v7, v0, :cond_2

    move v0, v1

    .line 160
    goto :goto_0

    :cond_2
    move v0, v4

    .line 162
    goto :goto_0

    .line 170
    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v2

    .line 171
    goto :goto_1

    .line 172
    :cond_4
    if-ne v0, v3, :cond_9

    .line 175
    if-ne v5, v1, :cond_5

    move v0, v1

    .line 176
    goto :goto_1

    .line 177
    :cond_5
    if-ne v5, v4, :cond_9

    move v0, v2

    .line 178
    goto :goto_1

    .line 186
    :cond_6
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2

    .line 192
    :pswitch_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->g:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 194
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->c:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 196
    :pswitch_2
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->h:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 202
    :cond_8
    packed-switch v6, :pswitch_data_1

    .line 211
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->b:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 204
    :pswitch_3
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->e:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 206
    :pswitch_4
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->d:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    .line 208
    :pswitch_5
    sget-object v0, Lcom/chartboost/sdk/Libraries/f;->f:Lcom/chartboost/sdk/Libraries/f;

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    const-string v1, "%s %s %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "Chartboost-Android-SDK"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "5.2.0"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBUtility;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static throwProguardError(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 217
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "CBUtility"

    const-string v1, "Chartboost library error! Have you used proguard on your application? Make sure to add the line \'-keep class com.chartboost.sdk.** { *; }\' to your proguard config file."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "CBUtility"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "CBUtility"

    const-string v1, "Unknown Proguard error"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
