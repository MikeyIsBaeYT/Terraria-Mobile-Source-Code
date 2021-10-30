.class public Lnet/hockeyapp/android/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final APP_IDENTIFIER_LENGTH:I = 0x20

.field public static final APP_IDENTIFIER_PATTERN:Ljava/lang/String; = "[0-9a-f]+"

.field public static final LOG_IDENTIFIER:Ljava/lang/String; = "HockeyApp"

.field public static final PREFS_FEEDBACK_TOKEN:Ljava/lang/String; = "net.hockeyapp.android.prefs_feedback_token"

.field public static final PREFS_KEY_FEEDBACK_TOKEN:Ljava/lang/String; = "net.hockeyapp.android.prefs_key_feedback_token"

.field public static final PREFS_KEY_NAME_EMAIL_SUBJECT:Ljava/lang/String; = "net.hockeyapp.android.prefs_key_name_email"

.field public static final PREFS_NAME_EMAIL_SUBJECT:Ljava/lang/String; = "net.hockeyapp.android.prefs_name_email"

.field private static final appIdentifierPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "[0-9a-f]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/utils/Util;->appIdentifierPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 72
    const-string v1, ""

    goto :goto_0
.end method

.method public static fragmentsSupported()Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    const-class v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_1
    return-object v1

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_0
    move v1, v2

    .line 100
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public static final isValidEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static runsOnTablet(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v2, 0x0

    .line 114
    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 116
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 119
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 124
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "App ID must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "sAppIdentifier":Ljava/lang/String;
    sget-object v2, Lnet/hockeyapp/android/utils/Util;->appIdentifierPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 143
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "App ID length must be 32 characters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "App ID must match regex pattern /[0-9a-f]+/i"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_2
    return-object v1
.end method
