.class final Lcom/flurry/android/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic dn:Lcom/flurry/android/gt;

.field private synthetic do:I

.field private synthetic dp:Lcom/flurry/android/ft;


# direct methods
.method constructor <init>(Lcom/flurry/android/ft;Lcom/flurry/android/gt;I)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    iput-object p2, p0, Lcom/flurry/android/bh;->dn:Lcom/flurry/android/gt;

    iput p3, p0, Lcom/flurry/android/bh;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 896
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 897
    const-string v0, "sourceEvent"

    iget-object v1, p0, Lcom/flurry/android/bh;->dn:Lcom/flurry/android/gt;

    iget-object v1, v1, Lcom/flurry/android/gt;->jf:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    const-string v1, "userCanceled"

    iget-object v3, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    iget-object v3, v3, Lcom/flurry/android/ft;->T:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    iget-object v4, v4, Lcom/flurry/android/ft;->S:Lcom/flurry/android/cw;

    iget-object v5, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    iget v5, v5, Lcom/flurry/android/ft;->U:I

    iget v6, p0, Lcom/flurry/android/bh;->do:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/ft;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cw;II)V

    .line 899
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 900
    iget-object v0, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->v(Lcom/flurry/android/ft;)Lcom/flurry/android/gk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    invoke-virtual {v0}, Lcom/flurry/android/ft;->bw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/flurry/android/bh;->dp:Lcom/flurry/android/ft;

    invoke-static {v0}, Lcom/flurry/android/ft;->v(Lcom/flurry/android/ft;)Lcom/flurry/android/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/gk;->start()V

    .line 904
    :cond_0
    return-void
.end method
