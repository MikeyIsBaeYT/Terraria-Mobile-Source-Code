.class public Lnet/hockeyapp/android/utils/PrefsUtil;
.super Ljava/lang/Object;
.source "PrefsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/PrefsUtil$1;,
        Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;
    }
.end annotation


# instance fields
.field private feedbackTokenPrefs:Landroid/content/SharedPreferences;

.field private feedbackTokenPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

.field private nameEmailSubjectPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/PrefsUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/PrefsUtil$1;

    .prologue
    .line 41
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/PrefsUtil;-><init>()V

    return-void
.end method

.method public static applyChanges(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 155
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->applySupported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static applySupported()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 170
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    return-object v1

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_0
    move v1, v2

    .line 170
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;->INSTANCE:Lnet/hockeyapp/android/utils/PrefsUtil;

    return-object v0
.end method


# virtual methods
.method public getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v1, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameEmailFromPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    const-string v1, "net.hockeyapp.android.prefs_name_email"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    .line 141
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_name_email"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveFeedbackTokenToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->feedbackTokenPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    :cond_0
    return-void
.end method

.method public saveNameEmailSubjectToPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    const-string v0, "net.hockeyapp.android.prefs_name_email"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    .line 115
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 117
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 118
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_name_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 127
    :cond_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->nameEmailSubjectPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_name_email"

    const-string v2, "%s|%s|%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
