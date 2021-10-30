.class public Lnet/hockeyapp/android/objects/ErrorObject;
.super Ljava/lang/Object;
.source "ErrorObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14ede2a74a40f08cL


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lnet/hockeyapp/android/objects/ErrorObject;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/hockeyapp/android/objects/ErrorObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 50
    iput p1, p0, Lnet/hockeyapp/android/objects/ErrorObject;->code:I

    .line 51
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/hockeyapp/android/objects/ErrorObject;->message:Ljava/lang/String;

    .line 59
    return-void
.end method
