.class public Lcom/codeglue/terraria/ObbPackage;
.super Ljava/lang/Object;
.source "ObbPackage.java"


# instance fields
.field public final fileSize:J

.field public final fileVersion:I

.field public final isMainFile:Z


# direct methods
.method public constructor <init>(ZIJ)V
    .locals 1
    .param p1, "mainFile"    # Z
    .param p2, "version"    # I
    .param p3, "size"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/codeglue/terraria/ObbPackage;->isMainFile:Z

    .line 12
    iput p2, p0, Lcom/codeglue/terraria/ObbPackage;->fileVersion:I

    .line 13
    iput-wide p3, p0, Lcom/codeglue/terraria/ObbPackage;->fileSize:J

    .line 14
    return-void
.end method
