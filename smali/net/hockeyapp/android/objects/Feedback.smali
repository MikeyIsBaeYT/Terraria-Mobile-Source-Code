.class public Lnet/hockeyapp/android/objects/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x23f22471d131d6e8L


# instance fields
.field private createdAt:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:I

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lnet/hockeyapp/android/objects/Feedback;->id:I

    return v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->createdAt:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->email:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 70
    iput p1, p0, Lnet/hockeyapp/android/objects/Feedback;->id:I

    .line 71
    return-void
.end method

.method public setMessages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->messages:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->name:Ljava/lang/String;

    .line 55
    return-void
.end method
