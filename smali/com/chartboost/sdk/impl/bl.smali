.class public Lcom/chartboost/sdk/impl/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bl$a;,
        Lcom/chartboost/sdk/impl/bl$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/chartboost/sdk/impl/bl$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "arg:left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "arg:center"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "arg:right"

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/impl/bl;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/chartboost/sdk/impl/bl$b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p3, p0, Lcom/chartboost/sdk/impl/bl;->b:Lcom/chartboost/sdk/impl/bl$b;

    .line 57
    const-string v0, "arg:title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v0, "arg:message"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v0, "arg:default"

    const/4 v4, -0x1

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 62
    :goto_0
    const/4 v6, 0x3

    if-ge v0, v6, :cond_1

    .line 63
    sget-object v6, Lcom/chartboost/sdk/impl/bl;->a:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 65
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    packed-switch v3, :pswitch_data_0

    .line 83
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 85
    new-instance v0, Lcom/chartboost/sdk/impl/bl$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bl$1;-><init>(Lcom/chartboost/sdk/impl/bl;Landroid/app/AlertDialog;ILjava/util/ArrayList;I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 109
    new-instance v0, Lcom/chartboost/sdk/impl/bl$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bl$2;-><init>(Lcom/chartboost/sdk/impl/bl;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void

    .line 74
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    :pswitch_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bl;)Lcom/chartboost/sdk/impl/bl$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl;->b:Lcom/chartboost/sdk/impl/bl$b;

    return-object v0
.end method

.method static synthetic a(Landroid/app/AlertDialog;)[Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bl;->b(Landroid/app/AlertDialog;)[Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Landroid/app/AlertDialog;)[Landroid/widget/Button;
    .locals 6

    .prologue
    .line 119
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 131
    :cond_1
    instance-of v5, v1, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 132
    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/Button;

    .line 136
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    return-object v0
.end method
