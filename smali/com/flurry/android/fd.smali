.class final Lcom/flurry/android/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final gm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v6, 0x5

    .line 22
    const-class v0, Lcom/flurry/android/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/fd;->gm:Ljava/lang/String;

    .line 23
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/flurry/android/fd;->bf()I

    move-result v0

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x7

    const/4 v5, 0x7

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x9

    const/16 v5, 0x9

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xa

    const/4 v5, 0x7

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v4, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x8

    const/16 v2, 0x8

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sput-object v3, Lcom/flurry/android/fd;->gM:Landroid/util/SparseArray;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/ActivityInfo;)I
    .locals 3

    .prologue
    .line 130
    if-nez p0, :cond_1

    .line 131
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 135
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 136
    or-int/lit16 v0, v0, 0xc00

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    .line 90
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find info for activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 29
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;IZ)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 55
    if-nez p0, :cond_0

    move v0, v2

    .line 79
    :goto_0
    return v0

    .line 62
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/flurry/android/fd;->a(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    move v0, v2

    .line 63
    :goto_2
    if-nez v0, :cond_6

    .line 64
    if-nez p0, :cond_4

    move v0, v1

    .line 67
    :goto_3
    if-ne v1, v0, :cond_5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot set requested orientation without restarting activity, requestedOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/flurry/android/fd;->gm:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/cy;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 74
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/flurry/android/fd;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-object v4, Lcom/flurry/android/fd;->gM:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_3

    :cond_5
    move p1, v0

    .line 78
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v3

    .line 79
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public static bf()I
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    .line 35
    sget v1, Lcom/flurry/android/n;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 36
    const/4 v0, 0x7

    .line 39
    :cond_0
    return v0
.end method
