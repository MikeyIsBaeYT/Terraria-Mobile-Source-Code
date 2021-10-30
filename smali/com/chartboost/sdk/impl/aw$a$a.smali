.class public Lcom/chartboost/sdk/impl/aw$a$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/aw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/chartboost/sdk/Libraries/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/aw$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/aw$a;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    .line 235
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/aw;->m(Lcom/chartboost/sdk/impl/aw;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 236
    iput-object p2, p0, Lcom/chartboost/sdk/impl/aw$a$a;->b:Landroid/content/Context;

    .line 237
    return-void
.end method


# virtual methods
.method public a(I)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->m(Lcom/chartboost/sdk/impl/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw;->m(Lcom/chartboost/sdk/impl/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 302
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/aw$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/aw$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 313
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 315
    invoke-static {}, Lcom/chartboost/sdk/impl/aw$b;->values()[Lcom/chartboost/sdk/impl/aw$b;

    move-result-object v3

    move v0, v1

    .line 316
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 317
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/chartboost/sdk/impl/aw$b;->a(Lcom/chartboost/sdk/impl/aw$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    :goto_1
    return v0

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 320
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/aw$a$a;->a(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 242
    const-string v1, "type"

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    .line 243
    const/4 v1, 0x0

    .line 245
    if-nez p2, :cond_2

    .line 246
    invoke-static {}, Lcom/chartboost/sdk/impl/aw$b;->values()[Lcom/chartboost/sdk/impl/aw$b;

    move-result-object v4

    .line 247
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 248
    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/chartboost/sdk/impl/aw$b;->a(Lcom/chartboost/sdk/impl/aw$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    :try_start_0
    aget-object v0, v4, v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/aw$b;->b(Lcom/chartboost/sdk/impl/aw$b;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/chartboost/sdk/impl/aw;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 252
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/impl/aw$a$a;->a:Lcom/chartboost/sdk/impl/aw$a;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/aw$a;->b:Lcom/chartboost/sdk/impl/aw;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/chartboost/sdk/impl/aw$a$a;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p2, v0

    .line 265
    .end local p2    # "convertView":Landroid/view/View;
    :goto_2
    if-nez p2, :cond_3

    .line 266
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw$a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 296
    :cond_0
    :goto_3
    return-object p2

    .line 253
    .restart local p2    # "convertView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 254
    const-string v3, "error in more apps list"

    invoke-static {p0, v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 256
    goto :goto_1

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_2
    instance-of v0, p2, Lcom/chartboost/sdk/impl/ap;

    if-eqz v0, :cond_0

    .line 262
    check-cast p2, Lcom/chartboost/sdk/impl/ap;

    goto :goto_2

    .line 268
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual {p2, v2, p1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/Libraries/e$a;I)V

    .line 271
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ap;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v1, :cond_4

    .line 273
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 274
    iput v6, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 275
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ap;->a()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 280
    :goto_4
    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/ap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v0, Lcom/chartboost/sdk/impl/aw$a$a$1;

    invoke-direct {v0, p0, v2, p1}, Lcom/chartboost/sdk/impl/aw$a$a$1;-><init>(Lcom/chartboost/sdk/impl/aw$a$a;Lcom/chartboost/sdk/Libraries/e$a;I)V

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/ap;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 277
    :cond_4
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/ap;->a()I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_4

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/chartboost/sdk/impl/aw$b;->values()[Lcom/chartboost/sdk/impl/aw$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
