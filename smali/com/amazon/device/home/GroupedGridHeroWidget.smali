.class public Lcom/amazon/device/home/GroupedGridHeroWidget;
.super Lcom/amazon/device/home/HeroWidget;
.source "GroupedGridHeroWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/home/GroupedGridHeroWidget$GridEntry;,
        Lcom/amazon/device/home/GroupedGridHeroWidget$Group;,
        Lcom/amazon/device/home/GroupedGridHeroWidget$EmptyGridProperty;
    }
.end annotation


# static fields
.field public static final MAX_GRID_SIZE:I = 0x32

.field public static final MAX_STRING_LENGTH:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/amazon/device/home/HeroWidget;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setEmptyGridProperty(Lcom/amazon/device/home/GroupedGridHeroWidget$EmptyGridProperty;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/home/GroupedGridHeroWidget$Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
