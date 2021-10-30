.class public Lnet/hockeyapp/android/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final CRASH_DIALOG_MESSAGE_ID:I = 0x1

.field public static final CRASH_DIALOG_NEGATIVE_BUTTON_ID:I = 0x2

.field public static final CRASH_DIALOG_NEUTRAL_BUTTON_ID:I = 0x3

.field public static final CRASH_DIALOG_POSITIVE_BUTTON_ID:I = 0x4

.field public static final CRASH_DIALOG_TITLE_ID:I = 0x0

.field private static final DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNLOAD_FAILED_DIALOG_MESSAGE_ID:I = 0x101

.field public static final DOWNLOAD_FAILED_DIALOG_NEGATIVE_BUTTON_ID:I = 0x102

.field public static final DOWNLOAD_FAILED_DIALOG_POSITIVE_BUTTON_ID:I = 0x103

.field public static final DOWNLOAD_FAILED_DIALOG_TITLE_ID:I = 0x100

.field public static final EXPIRY_INFO_TEXT_ID:I = 0x301

.field public static final EXPIRY_INFO_TITLE_ID:I = 0x300

.field public static final FEEDBACK_ATTACHMENT_BUTTON_TEXT_ID:I = 0x407

.field public static final FEEDBACK_EMAIL_INPUT_HINT_ID:I = 0x403

.field public static final FEEDBACK_FAILED_TEXT_ID:I = 0x401

.field public static final FEEDBACK_FAILED_TITLE_ID:I = 0x400

.field public static final FEEDBACK_GENERIC_ERROR_ID:I = 0x410

.field public static final FEEDBACK_LAST_UPDATED_TEXT_ID:I = 0x406

.field public static final FEEDBACK_MESSAGE_INPUT_HINT_ID:I = 0x405

.field public static final FEEDBACK_NAME_INPUT_HINT_ID:I = 0x402

.field public static final FEEDBACK_REFRESH_BUTTON_TEXT_ID:I = 0x40a

.field public static final FEEDBACK_RESPONSE_BUTTON_TEXT_ID:I = 0x409

.field public static final FEEDBACK_SEND_BUTTON_TEXT_ID:I = 0x408

.field public static final FEEDBACK_SEND_GENERIC_ERROR_ID:I = 0x40c

.field public static final FEEDBACK_SEND_NETWORK_ERROR_ID:I = 0x40d

.field public static final FEEDBACK_SUBJECT_INPUT_HINT_ID:I = 0x404

.field public static final FEEDBACK_TITLE_ID:I = 0x40b

.field public static final FEEDBACK_VALIDATE_EMAIL_EMPTY_ID:I = 0x412

.field public static final FEEDBACK_VALIDATE_EMAIL_ERROR_ID:I = 0x40f

.field public static final FEEDBACK_VALIDATE_NAME_ERROR_ID:I = 0x411

.field public static final FEEDBACK_VALIDATE_SUBJECT_ERROR_ID:I = 0x40e

.field public static final FEEDBACK_VALIDATE_TEXT_ERROR_ID:I = 0x413

.field public static final LOGIN_EMAIL_INPUT_HINT_ID:I = 0x502

.field public static final LOGIN_HEADLINE_TEXT_ID:I = 0x500

.field public static final LOGIN_LOGIN_BUTTON_TEXT_ID:I = 0x504

.field public static final LOGIN_MISSING_CREDENTIALS_TOAST_ID:I = 0x501

.field public static final LOGIN_PASSWORD_INPUT_HINT_ID:I = 0x503

.field public static final PAINT_DIALOG_MESSAGE_ID:I = 0x604

.field public static final PAINT_DIALOG_NEGATIVE_BUTTON_ID:I = 0x605

.field public static final PAINT_DIALOG_POSITIVE_BUTTON_ID:I = 0x606

.field public static final PAINT_INDICATOR_TOAST_ID:I = 0x600

.field public static final PAINT_MENU_CLEAR_ID:I = 0x603

.field public static final PAINT_MENU_SAVE_ID:I = 0x601

.field public static final PAINT_MENU_UNDO_ID:I = 0x602

.field public static final UPDATE_DIALOG_MESSAGE_ID:I = 0x202

.field public static final UPDATE_DIALOG_NEGATIVE_BUTTON_ID:I = 0x203

.field public static final UPDATE_DIALOG_POSITIVE_BUTTON_ID:I = 0x204

.field public static final UPDATE_DIALOG_TITLE_ID:I = 0x201

.field public static final UPDATE_MANDATORY_TOAST_ID:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    .line 220
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crash Data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The app found information about previous crashes. Would you like to send this data to the developer?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dismiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Always send"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Send"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Download Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The update could not be downloaded. Would you like to try again?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Retry"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please install the latest version to continue to use this app."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Update Available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Show information about the new update?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dismiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Show"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Build Expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "This has build has expired. Please check HockeyApp for any updates."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Feedback Failed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Would you like to send your feedback again?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Message"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Last Updated: "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Add Attachment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Send Feedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Add a Response"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Refresh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Feedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Message couldn\'t be posted. Please check your input values and your connection, then try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No response from server. Please check your connection, then try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please enter a subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please enter a name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please enter an email address"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please enter a feedback text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x40f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Message couldn\'t be posted. Please check the format of your email address."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "An error has occured"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please enter your account credentials."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please fill in the missing account credentials."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Email"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x503

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x504

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x600

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Draw something!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x601

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Save"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x602

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x603

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Clear"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x604

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Discard your drawings?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x605

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    const/16 v1, 0x606

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1
    .param p0, "resourceID"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;
    .locals 3
    .param p0, "listener"    # Lnet/hockeyapp/android/StringListener;
    .param p1, "resourceID"    # I

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/StringListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    if-nez v0, :cond_1

    .line 323
    sget-object v1, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 326
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static set(ILjava/lang/String;)V
    .locals 2
    .param p0, "resourceID"    # I
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    sget-object v0, Lnet/hockeyapp/android/Strings;->DEFAULT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    return-void
.end method
