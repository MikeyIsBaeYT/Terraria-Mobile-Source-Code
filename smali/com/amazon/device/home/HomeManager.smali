.class public Lcom/amazon/device/home/HomeManager;
.super Ljava/lang/Object;
.source "HomeManager.java"


# static fields
.field public static final FEATURE_HOME:Ljava/lang/String; = "com.amazon.software.home"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/device/home/HomeManager;
    .locals 3

    .prologue
    .line 16
    const-class v1, Lcom/amazon/device/home/HomeManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public removeWidget()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNumericBadge(I)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateWidget(Lcom/amazon/device/home/HeroWidget;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
