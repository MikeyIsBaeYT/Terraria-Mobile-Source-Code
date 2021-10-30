.class public Lnet/hockeyapp/android/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "hockeyapp_crash_dialog_title"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 50
    const-string v0, "hockeyapp_crash_dialog_message"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 51
    const-string v0, "hockeyapp_crash_dialog_negative_button"

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 52
    const-string v0, "hockeyapp_crash_dialog_positive_button"

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 55
    const-string v0, "hockeyapp_download_failed_dialog_title"

    const/16 v1, 0x100

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 56
    const-string v0, "hockeyapp_download_failed_dialog_message"

    const/16 v1, 0x101

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 57
    const-string v0, "hockeyapp_download_failed_dialog_negative_button"

    const/16 v1, 0x102

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 58
    const-string v0, "hockeyapp_download_failed_dialog_positive_button"

    const/16 v1, 0x103

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 61
    const-string v0, "hockeyapp_update_mandatory_toast"

    const/16 v1, 0x200

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 62
    const-string v0, "hockeyapp_update_dialog_title"

    const/16 v1, 0x201

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 63
    const-string v0, "hockeyapp_update_dialog_message"

    const/16 v1, 0x202

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 64
    const-string v0, "hockeyapp_update_dialog_negative_button"

    const/16 v1, 0x203

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 65
    const-string v0, "hockeyapp_update_dialog_positive_button"

    const/16 v1, 0x204

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 68
    const-string v0, "hockeyapp_expiry_info_title"

    const/16 v1, 0x300

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 69
    const-string v0, "hockeyapp_expiry_info_text"

    const/16 v1, 0x301

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 72
    const-string v0, "hockeyapp_feedback_failed_title"

    const/16 v1, 0x400

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 73
    const-string v0, "hockeyapp_feedback_failed_text"

    const/16 v1, 0x401

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 74
    const-string v0, "hockeyapp_feedback_name_hint"

    const/16 v1, 0x402

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 75
    const-string v0, "hockeyapp_feedback_email_hint"

    const/16 v1, 0x403

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 76
    const-string v0, "hockeyapp_feedback_subject_hint"

    const/16 v1, 0x404

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 77
    const-string v0, "hockeyapp_feedback_message_hint"

    const/16 v1, 0x405

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 78
    const-string v0, "hockeyapp_feedback_last_updated_text"

    const/16 v1, 0x406

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 79
    const-string v0, "hockeyapp_feedback_attachment_button_text"

    const/16 v1, 0x407

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 80
    const-string v0, "hockeyapp_feedback_send_button_text"

    const/16 v1, 0x408

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 81
    const-string v0, "hockeyapp_feedback_response_button_text"

    const/16 v1, 0x409

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 82
    const-string v0, "hockeyapp_feedback_refresh_button_text"

    const/16 v1, 0x40a

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 83
    const-string v0, "hockeyapp_feedback_title"

    const/16 v1, 0x40b

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 84
    const-string v0, "hockeyapp_feedback_send_generic_error"

    const/16 v1, 0x40c

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 85
    const-string v0, "hockeyapp_feedback_send_network_error"

    const/16 v1, 0x40d

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 86
    const-string v0, "hockeyapp_feedback_validate_subject_error"

    const/16 v1, 0x40e

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 87
    const-string v0, "hockeyapp_feedback_validate_email_error"

    const/16 v1, 0x40f

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 88
    const-string v0, "hockeyapp_feedback_validate_email_empty"

    const/16 v1, 0x412

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 89
    const-string v0, "hockeyapp_feedback_validate_name_error"

    const/16 v1, 0x411

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 90
    const-string v0, "hockeyapp_feedback_validate_text_error"

    const/16 v1, 0x413

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 91
    const-string v0, "hockeyapp_feedback_generic_error"

    const/16 v1, 0x410

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 94
    const-string v0, "hockeyapp_login_headline_text"

    const/16 v1, 0x500

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 95
    const-string v0, "hockeyapp_login_missing_credentials_toast"

    const/16 v1, 0x501

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 96
    const-string v0, "hockeyapp_login_email_hint"

    const/16 v1, 0x502

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 97
    const-string v0, "hockeyapp_login_password_hint"

    const/16 v1, 0x503

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 98
    const-string v0, "hockeyapp_login_login_button_text"

    const/16 v1, 0x504

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 101
    const-string v0, "hockeyapp_paint_indicator_toast"

    const/16 v1, 0x600

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 102
    const-string v0, "hockeyapp_paint_menu_save"

    const/16 v1, 0x601

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 103
    const-string v0, "hockeyapp_paint_menu_undo"

    const/16 v1, 0x602

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 104
    const-string v0, "hockeyapp_paint_menu_clear"

    const/16 v1, 0x603

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 105
    const-string v0, "hockeyapp_paint_dialog_message"

    const/16 v1, 0x604

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 106
    const-string v0, "hockeyapp_paint_dialog_negative_button"

    const/16 v1, 0x605

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 107
    const-string v0, "hockeyapp_paint_dialog_positive_button"

    const/16 v1, 0x606

    invoke-static {v0, v1, p0}, Lnet/hockeyapp/android/LocaleManager;->loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 108
    return-void
.end method

.method private static loadFromResources(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "resId":I
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "string":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {p1, v1}, Lnet/hockeyapp/android/Strings;->set(ILjava/lang/String;)V

    goto :goto_0
.end method
