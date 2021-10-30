.class Lnet/hockeyapp/android/utils/ConnectionManager$ConnectionManagerHolder;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/hockeyapp/android/utils/ConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lnet/hockeyapp/android/utils/ConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/hockeyapp/android/utils/ConnectionManager;-><init>(Lnet/hockeyapp/android/utils/ConnectionManager$1;)V

    sput-object v0, Lnet/hockeyapp/android/utils/ConnectionManager$ConnectionManagerHolder;->INSTANCE:Lnet/hockeyapp/android/utils/ConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
