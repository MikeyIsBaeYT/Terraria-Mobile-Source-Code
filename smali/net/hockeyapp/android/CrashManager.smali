.class public Lnet/hockeyapp/android/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"


# static fields
.field private static final ALWAYS_SEND_KEY:Ljava/lang/String; = "always_send_crash_reports"

.field private static identifier:Ljava/lang/String;

.field private static submitting:Z

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 82
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    return p0
.end method

.method private static contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 500
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_3

    .line 501
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 502
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_3

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, "contents":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 506
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 508
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 513
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 519
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v4, :cond_0

    .line 521
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 528
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 532
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_3
    return-object v6

    .line 519
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v5, :cond_4

    .line 521
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 524
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 523
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v4, v5

    .line 524
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 515
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 516
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    if-eqz v4, :cond_0

    .line 521
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 523
    :catch_3
    move-exception v6

    goto :goto_2

    .line 519
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_2

    .line 521
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 524
    :cond_2
    :goto_6
    throw v6

    .line 532
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 523
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_6

    .line 519
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 515
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 513
    .end local v3    # "line":Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 478
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 480
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 483
    const-string v4, ".stacktrace"

    const-string v5, ".user"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "user":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 486
    const-string v4, ".stacktrace"

    const-string v5, ".contact"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 489
    const-string v4, ".stacktrace"

    const-string v5, ".description"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 493
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "user":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static deleteStackTraces(Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 317
    const-string v5, "HockeyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stacktrace(s)."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 323
    :try_start_0
    const-string v5, "HockeyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete stacktrace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    .line 327
    if-eqz v1, :cond_0

    .line 328
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 337
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_1
    return-void
.end method

.method public static execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 167
    .local v2, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 169
    .local v4, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {v4}, Lnet/hockeyapp/android/CrashManager;->hasStackTraces(Ljava/lang/ref/WeakReference;)I

    move-result v1

    .line 170
    .local v1, "foundOrSend":I
    if-ne v1, v6, :cond_3

    .line 171
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 172
    .local v0, "autoSend":Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 173
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "always_send_crash_reports"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->shouldAutoUploadCrashes()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesFound()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onNewCrashesFound()V

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 199
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .end local v1    # "foundOrSend":I
    .end local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_1
    move v5, v7

    .line 166
    goto :goto_0

    .line 186
    .restart local v0    # "autoSend":Ljava/lang/Boolean;
    .restart local v1    # "foundOrSend":I
    .restart local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1

    .line 189
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 190
    if-eqz p1, :cond_4

    .line 191
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onConfirmedCrashesFound()V

    .line 194
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1
.end method

.method private static getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStackTraces(Ljava/lang/ref/WeakReference;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v8, 0x0

    .line 210
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "filenames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 212
    .local v1, "confirmedFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 213
    .local v6, "result":I
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    .line 218
    if-eqz v2, :cond_0

    .line 219
    const-string v7, "HockeySDK"

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 220
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "ConfirmedFilenames"

    const-string v9, ""

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "\\|"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 230
    const/4 v6, 0x2

    .line 232
    array-length v9, v4

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v3, v4, v7

    .line 233
    .local v3, "filename":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 234
    const/4 v6, 0x1

    .line 244
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_1
    :goto_2
    return v6

    .line 232
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 240
    .end local v3    # "filename":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 225
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 155
    return-void
.end method

.method private static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p4, "registerHandler"    # Z

    .prologue
    .line 345
    if-eqz p0, :cond_1

    .line 346
    sput-object p1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 347
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 349
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 351
    sget-object v2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 352
    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 355
    :cond_0
    if-eqz p4, :cond_1

    .line 356
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 357
    .local v0, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 358
    .local v1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p3, v2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 361
    .end local v0    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v1    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_1
    return-void

    .line 356
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 139
    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 140
    return-void
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 564
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 102
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 125
    invoke-static {p0, p3}, Lnet/hockeyapp/android/CrashManager;->execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 126
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 112
    const-string v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 113
    return-void
.end method

.method private static registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 4
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 447
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 448
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_0

    .line 449
    const-string v1, "HockeyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current handler class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    instance-of v1, v0, Lnet/hockeyapp/android/ExceptionHandler;

    if-eqz v1, :cond_1

    .line 454
    check-cast v0, Lnet/hockeyapp/android/ExceptionHandler;

    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->setListener(Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 463
    :goto_0
    return-void

    .line 457
    .restart local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    new-instance v1, Lnet/hockeyapp/android/ExceptionHandler;

    invoke-direct {v1, v0, p1, p2}, Lnet/hockeyapp/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 461
    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_2
    const-string v1, "HockeyApp"

    const-string v2, "Exception handler not set because version or package is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 540
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 542
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "filenames":[Ljava/lang/String;
    const-string v4, "HockeySDK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 546
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 547
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ConfirmedFilenames"

    const-string v5, "|"

    invoke-static {v2, v5}, Lnet/hockeyapp/android/CrashManager;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-static {v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "filenames":[Ljava/lang/String;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static searchForStackTraces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 576
    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 577
    const-string v3, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for exceptions in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 582
    .local v0, "created":Z
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 596
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    return-object v3

    .line 587
    .restart local v0    # "created":Z
    .restart local v1    # "dir":Ljava/io/File;
    :cond_0
    new-instance v2, Lnet/hockeyapp/android/CrashManager$5;

    invoke-direct {v2}, Lnet/hockeyapp/android/CrashManager$5;-><init>()V

    .line 592
    .local v2, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 595
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    :cond_1
    const-string v3, "HockeyApp"

    const-string v4, "Can\'t search for exception as file path is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 1
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 426
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 428
    sget-boolean v0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    .line 431
    new-instance v0, Lnet/hockeyapp/android/CrashManager$4;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/CrashManager$4;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 437
    invoke-virtual {v0}, Lnet/hockeyapp/android/CrashManager$4;->start()V

    .line 439
    :cond_0
    return-void
.end method

.method private static showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 4
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 369
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 373
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    if-nez v1, :cond_1

    .line 418
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 381
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$1;

    invoke-direct {v3, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$1;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$2;

    invoke-direct {v3, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$2;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$3;

    invoke-direct {v3, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$3;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 13
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "list":[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 257
    .local v8, "successful":Ljava/lang/Boolean;
    if-eqz v5, :cond_6

    array-length v9, v5

    if-lez v9, :cond_6

    .line 258
    const-string v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stacktrace(s)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_6

    .line 263
    :try_start_0
    aget-object v1, v5, v4

    .line 264
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "stacktrace":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 267
    const-string v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transmitting crash data: \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lnet/hockeyapp/android/utils/ConnectionManager;->getInstance()Lnet/hockeyapp/android/utils/ConnectionManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/hockeyapp/android/utils/ConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 269
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getURLString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v6, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "raw"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "userID"

    const-string v11, ".stacktrace"

    const-string v12, ".user"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "contact"

    const-string v11, ".stacktrace"

    const-string v12, ".contact"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "description"

    const-string v11, ".stacktrace"

    const-string v12, ".description"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sdk"

    const-string v11, "HockeySDK"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sdk_version"

    const-string v11, "3.5.0"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 281
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 282
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 289
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 290
    const-string v9, "HockeyApp"

    const-string v10, "Transmission succeeded"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 260
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 298
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v7    # "stacktrace":Ljava/lang/String;
    :cond_2
    const-string v9, "HockeyApp"

    const-string v10, "Transmission failed, will retry on next register() call"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_1

    .line 285
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 290
    const-string v9, "HockeyApp"

    const-string v10, "Transmission succeeded"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    goto :goto_1

    .line 298
    :cond_3
    const-string v9, "HockeyApp"

    const-string v10, "Transmission failed, will retry on next register() call"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_1

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 290
    const-string v10, "HockeyApp"

    const-string v11, "Transmission succeeded"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    aget-object v10, v5, v4

    invoke-static {p0, v10}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_4

    .line 294
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 300
    :cond_4
    :goto_2
    throw v9

    .line 298
    :cond_5
    const-string v10, "HockeyApp"

    const-string v11, "Transmission failed, will retry on next register() call"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p1, :cond_4

    .line 300
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_2

    .line 306
    .end local v4    # "index":I
    :cond_6
    return-void
.end method
