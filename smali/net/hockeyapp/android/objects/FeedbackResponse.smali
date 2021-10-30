.class public Lnet/hockeyapp/android/objects/FeedbackResponse;
.super Ljava/lang/Object;
.source "FeedbackResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xf2d2472b72e4b8eL


# instance fields
.field private feedback:Lnet/hockeyapp/android/objects/Feedback;

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedback()Lnet/hockeyapp/android/objects/Feedback;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->feedback:Lnet/hockeyapp/android/objects/Feedback;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    .locals 0
    .param p1, "feedback"    # Lnet/hockeyapp/android/objects/Feedback;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->feedback:Lnet/hockeyapp/android/objects/Feedback;

    .line 60
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->status:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->token:Ljava/lang/String;

    .line 68
    return-void
.end method
