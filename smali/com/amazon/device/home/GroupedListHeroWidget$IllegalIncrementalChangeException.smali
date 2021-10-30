.class public Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;
.super Ljava/lang/Exception;
.source "GroupedListHeroWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/home/GroupedListHeroWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IllegalIncrementalChangeException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/home/GroupedListHeroWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/device/home/GroupedListHeroWidget;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/amazon/device/home/GroupedListHeroWidget$IllegalIncrementalChangeException;->this$0:Lcom/amazon/device/home/GroupedListHeroWidget;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
