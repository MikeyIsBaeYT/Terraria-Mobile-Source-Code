.class public final Lcom/bda/controller/Constants$ActivityEvent;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityEvent"
.end annotation


# static fields
.field public static final CREATE:I = 0x1

.field public static final DESTROY:I = 0x2

.field public static final PAUSE:I = 0x6

.field public static final RESUME:I = 0x5

.field public static final SERVICE_CONNECTED:I = 0x7

.field public static final START:I = 0x3

.field public static final STOP:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
