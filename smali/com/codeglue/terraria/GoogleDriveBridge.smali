.class Lcom/codeglue/terraria/GoogleDriveBridge;
.super Ljava/lang/Object;
.source "GoogleDriveBridge.java"


# static fields
.field public static drive:Lcom/codeglue/terraria/GoogleDrive;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAllKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0}, Lcom/codeglue/terraria/GoogleDrive;->GetAllKeys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static GetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/GoogleDrive;->GetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static HasKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/GoogleDrive;->HasKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static IsConnected()Z
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0}, Lcom/codeglue/terraria/GoogleDrive;->IsConnected()Z

    move-result v0

    return v0
.end method

.method public static RemoveValue(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0, p0}, Lcom/codeglue/terraria/GoogleDrive;->RemoveValue(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static StoreKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0, p0, p1}, Lcom/codeglue/terraria/GoogleDrive;->StoreKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static Synchronize()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/codeglue/terraria/GoogleDriveBridge;->drive:Lcom/codeglue/terraria/GoogleDrive;

    invoke-virtual {v0}, Lcom/codeglue/terraria/GoogleDrive;->Synchronize()V

    .line 42
    return-void
.end method
