.class final Lcom/codeglue/terraria/OctarineBridge$1;
.super Ljava/lang/Object;
.source "OctarineBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codeglue/terraria/OctarineBridge;->Finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/codeglue/terraria/OctarineBridge;->activity:Lcom/codeglue/terraria/OctarineActivity;

    invoke-virtual {v0}, Lcom/codeglue/terraria/OctarineActivity;->finish()V

    .line 150
    return-void
.end method
