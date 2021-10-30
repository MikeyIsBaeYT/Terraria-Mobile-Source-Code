.class public Lnet/hockeyapp/android/utils/VersionCache;
.super Ljava/lang/Object;
.source "VersionCache.java"


# static fields
.field private static VERSION_INFO_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "versionInfo"

    sput-object v0, Lnet/hockeyapp/android/utils/VersionCache;->VERSION_INFO_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    const-string v1, "HockeyApp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "preferences":Landroid/content/SharedPreferences;
    sget-object v1, Lnet/hockeyapp/android/utils/VersionCache;->VERSION_INFO_KEY:Ljava/lang/String;

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "[]"

    goto :goto_0
.end method

.method public static setVersionInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    const-string v2, "HockeyApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lnet/hockeyapp/android/utils/VersionCache;->VERSION_INFO_KEY:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-static {v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
