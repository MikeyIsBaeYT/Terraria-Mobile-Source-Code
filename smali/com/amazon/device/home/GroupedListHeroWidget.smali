.class public Lcom/amazon/device/home/GroupedListHeroWidget;
.super Lcom/amazon/device/home/HeroWidget;
.source "GroupedListHeroWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/home/GroupedListHeroWidget$ListEntry;,
        Lcom/amazon/device/home/GroupedListHeroWidget$Group;,
        Lcom/amazon/device/home/GroupedListHeroWidget$EmptyListProperty;,
        Lcom/amazon/device/home/GroupedListHeroWidget$VisualStyle;,
        Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
    }
.end annotation


# static fields
.field public static final MAX_LIST_SIZE:I = 0x32

.field public static final MAX_STRING_LENGTH:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/amazon/device/home/HeroWidget;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addGroup(ILcom/amazon/device/home/GroupedListHeroWidget$Group;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addListEntry(IILcom/amazon/device/home/GroupedListHeroWidget$ListEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeListEntry(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmptyListProperty(Lcom/amazon/device/home/GroupedListHeroWidget$EmptyListProperty;)V
    .locals 2

    .prologue
    .line 397
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
            "Lcom/amazon/device/home/GroupedListHeroWidget$Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateListEntry(IILcom/amazon/device/home/GroupedListHeroWidget$ListEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
