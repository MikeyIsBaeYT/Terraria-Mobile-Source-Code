.class public abstract Lnet/hockeyapp/android/CrashManagerListener;
.super Lnet/hockeyapp/android/StringListener;
.source "CrashManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreDefaultHandler()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public includeDeviceData()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public includeDeviceIdentifier()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onConfirmedCrashesFound()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onCrashesFound()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onCrashesNotSent()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onCrashesSent()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onNewCrashesFound()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onUserDeniedCrashes()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public shouldAutoUploadCrashes()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
