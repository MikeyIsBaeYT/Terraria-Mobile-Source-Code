.class public Lnet/hockeyapp/android/views/AttachmentListView;
.super Landroid/view/ViewGroup;
.source "AttachmentListView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private line_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/hockeyapp/android/views/AttachmentListView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 118
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .line 62
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getAttachmentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    :cond_0
    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    .line 124
    .local v3, "count":I
    sub-int v6, p4, p2

    .line 125
    .local v6, "width":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v7

    .line 126
    .local v7, "xPos":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingTop()I

    move-result v8

    .line 128
    .local v8, "yPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 129
    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 134
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 136
    .local v1, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 137
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    add-int v9, v7, v2

    if-le v9, v6, :cond_0

    .line 138
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v7

    .line 139
    iget v9, p0, Lnet/hockeyapp/android/views/AttachmentListView;->line_height:I

    add-int/2addr v8, v9

    .line 141
    :cond_0
    add-int v9, v7, v2

    add-int v10, v8, v1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 142
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v9, v2

    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getGap()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 128
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    sget-boolean v11, Lnet/hockeyapp/android/views/AttachmentListView;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 72
    .local v8, "width":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildCount()I

    move-result v3

    .line 73
    .local v3, "count":I
    const/4 v4, 0x0

    .line 74
    .local v4, "height":I
    const/4 v6, 0x0

    .line 76
    .local v6, "line_height":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v9

    .line 77
    .local v9, "xPos":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingTop()I

    move-result v10

    .line 79
    .local v10, "yPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 80
    invoke-virtual {p0, v5}, Lnet/hockeyapp/android/views/AttachmentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    move-object v0, v1

    .line 81
    check-cast v0, Lnet/hockeyapp/android/views/AttachmentView;

    .line 82
    .local v0, "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getEffectiveMaxHeight()I

    move-result v11

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/AttachmentView;->getPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 86
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 89
    .local v2, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 91
    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    .line 92
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingLeft()I

    move-result v9

    .line 93
    add-int/2addr v10, v6

    .line 95
    :cond_1
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 79
    .end local v2    # "childWidth":I
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "attachmentView":Lnet/hockeyapp/android/views/AttachmentView;
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iput v6, p0, Lnet/hockeyapp/android/views/AttachmentListView;->line_height:I

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_5

    .line 101
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 108
    :cond_4
    :goto_1
    invoke-virtual {p0, v8, v4}, Lnet/hockeyapp/android/views/AttachmentListView;->setMeasuredDimension(II)V

    .line 109
    return-void

    .line 103
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_4

    .line 104
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    if-ge v11, v4, :cond_4

    .line 105
    add-int v11, v10, v6

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentListView;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    goto :goto_1
.end method
