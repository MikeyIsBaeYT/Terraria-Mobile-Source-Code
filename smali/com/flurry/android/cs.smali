.class final Lcom/flurry/android/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final eK:Ljava/lang/String;

.field private final eL:Ljava/lang/String;

.field private final eM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/flurry/android/cs;->eK:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/flurry/android/cs;->eL:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/flurry/android/cs;->eM:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/android/cs;->eK:Ljava/lang/String;

    return-object v0
.end method

.method public final ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/cs;->eL:Ljava/lang/String;

    return-object v0
.end method

.method public final az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/cs;->eM:Ljava/lang/String;

    return-object v0
.end method
