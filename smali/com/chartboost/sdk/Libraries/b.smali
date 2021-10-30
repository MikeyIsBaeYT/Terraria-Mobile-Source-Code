.class public final Lcom/chartboost/sdk/Libraries/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 32
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
