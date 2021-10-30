.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "FeedbackMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L


# instance fields
.field private appId:Ljava/lang/String;

.field private cleanText:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private feedbackAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private oem:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userString:Ljava/lang/String;

.field private via:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->cleanText:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->feedbackAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->id:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->oem:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->userString:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->via:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->appId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setCleanText(Ljava/lang/String;)V
    .locals 0
    .param p1, "cleanText"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->cleanText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->createdAt:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setFeedbackAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->feedbackAttachments:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 111
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->id:I

    .line 112
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->model:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->name:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setOem(Ljava/lang/String;)V
    .locals 0
    .param p1, "oem"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->oem:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->osVersion:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSubjec(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjec"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->subject:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->text:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->token:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUserString(Ljava/lang/String;)V
    .locals 0
    .param p1, "userString"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->userString:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setVia(I)V
    .locals 0
    .param p1, "via"    # I

    .prologue
    .line 127
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->via:I

    .line 128
    return-void
.end method
