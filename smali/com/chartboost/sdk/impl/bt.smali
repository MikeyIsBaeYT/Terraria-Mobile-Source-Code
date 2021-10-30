.class public Lcom/chartboost/sdk/impl/bt;
.super Lcom/chartboost/sdk/impl/cg;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Z

.field public static final c:Ljava/nio/ByteOrder;

.field static final d:I

.field static final e:Lcom/chartboost/sdk/impl/cy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 39
    const-string v0, "com.mongodb"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/bt;->a:Ljava/util/logging/Logger;

    .line 41
    const-string v0, "DEBUG.MONGO"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/chartboost/sdk/impl/bt;->b:Z

    .line 44
    sget-object v0, Lcom/chartboost/sdk/impl/bt;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    sget-boolean v0, Lcom/chartboost/sdk/impl/bt;->b:Z

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/chartboost/sdk/impl/bt;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 53
    :cond_0
    :goto_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/chartboost/sdk/impl/bt;->c:Ljava/nio/ByteOrder;

    .line 61
    const-string v0, "MONGO.POOLSIZE"

    const-string v1, "10"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/impl/bt;->d:I

    .line 226
    new-instance v0, Lcom/chartboost/sdk/impl/cy;

    invoke-direct {v0, v2, v2, v2}, Lcom/chartboost/sdk/impl/cy;-><init>(III)V

    sput-object v0, Lcom/chartboost/sdk/impl/bt;->e:Lcom/chartboost/sdk/impl/cy;

    return-void

    .line 48
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/bt;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0
.end method
