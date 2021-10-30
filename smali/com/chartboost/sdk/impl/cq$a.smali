.class Lcom/chartboost/sdk/impl/cq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cq$a;->a()V

    .line 139
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    .line 144
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 152
    div-int/lit16 v0, p1, 0x4000

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    .line 153
    rem-int/lit16 v0, p1, 0x4000

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    .line 154
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/cq$a;)V
    .locals 1

    .prologue
    .line 147
    iget v0, p1, Lcom/chartboost/sdk/impl/cq$a;->a:I

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    .line 148
    iget v0, p1, Lcom/chartboost/sdk/impl/cq$a;->b:I

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    .line 149
    return-void
.end method

.method b()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x4000

    iget v1, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    .line 166
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    const/16 v1, 0x4000

    if-le v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "something is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-void
.end method

.method c()I
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    return v0
.end method

.method c(I)I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    if-ge p1, v0, :cond_0

    .line 179
    const/16 v0, 0x4000

    .line 180
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "broken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/chartboost/sdk/impl/cq$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/cq$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
