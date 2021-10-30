.class public Lcom/flurry/android/AppCloudSearchPredicateMatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hK:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/AppCloudSearchPredicateMatch;->hK:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/flurry/android/AppCloudSearchPredicateMatch;->hK:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/flurry/android/AppCloudSearchPredicateMatch;->hK:Ljava/lang/String;

    return-object v0
.end method
