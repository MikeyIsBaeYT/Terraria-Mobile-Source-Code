.class public Lnet/hockeyapp/android/PaintActivity;
.super Landroid/app/Activity;
.source "PaintActivity.java"


# static fields
.field private static final MENU_CLEAR_ID:I = 0x3

.field private static final MENU_SAVE_ID:I = 0x1

.field private static final MENU_UNDO_ID:I = 0x2


# instance fields
.field private imageName:Ljava/lang/String;

.field private paintView:Lnet/hockeyapp/android/views/PaintView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private determineFilename(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 195
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    .line 196
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 198
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    .local v6, "metaCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 203
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 208
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1
    if-nez v7, :cond_2

    .end local p2    # "fallback":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 208
    .restart local p2    # "fallback":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 211
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private makeResult()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "HockeyApp"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .local v1, "hockeyAppCache":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 155
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/PaintActivity;->imageName:Ljava/lang/String;

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v3, "result":Ljava/io/File;
    const/4 v4, 0x1

    .line 158
    .local v4, "suffix":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    new-instance v3, Ljava/io/File;

    .end local v3    # "result":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lnet/hockeyapp/android/PaintActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .restart local v3    # "result":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v6, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v6, v8}, Lnet/hockeyapp/android/views/PaintView;->setDrawingCacheEnabled(Z)V

    .line 164
    iget-object v6, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v6}, Lnet/hockeyapp/android/views/PaintView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Lnet/hockeyapp/android/PaintActivity$2;

    invoke-direct {v6, p0, v0}, Lnet/hockeyapp/android/PaintActivity$2;-><init>(Lnet/hockeyapp/android/PaintActivity;Landroid/graphics/Bitmap;)V

    new-array v7, v8, [Ljava/io/File;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 179
    invoke-virtual {v6, v7}, Lnet/hockeyapp/android/PaintActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 183
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "imageUri"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getParent()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 186
    invoke-virtual {p0, v9, v2}, Lnet/hockeyapp/android/PaintActivity;->setResult(ILandroid/content/Intent;)V

    .line 191
    :goto_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->finish()V

    .line 192
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getParent()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v9, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 45
    .local v4, "extras":Landroid/os/Bundle;
    const-string v11, "imageUri"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 47
    .local v7, "imageUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v7, v11}, Lnet/hockeyapp/android/PaintActivity;->determineFilename(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lnet/hockeyapp/android/PaintActivity;->imageName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v3, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .local v3, "displayWidth":I
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .local v2, "displayHeight":I
    if-le v3, v2, :cond_0

    const/4 v0, 0x0

    .line 54
    .local v0, "currentOrientation":I
    :goto_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v7}, Lnet/hockeyapp/android/views/PaintView;->determineOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    .line 55
    .local v1, "desiredOrientation":I
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/PaintActivity;->setRequestedOrientation(I)V

    .line 57
    if-eq v0, v1, :cond_1

    .line 59
    const-string v11, "HockeyApp"

    const-string v12, "Image loading skipped because activity will be destroyed for orientation change."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    return-void

    .line 51
    .end local v0    # "currentOrientation":I
    .end local v1    # "desiredOrientation":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .restart local v0    # "currentOrientation":I
    .restart local v1    # "desiredOrientation":I
    :cond_1
    new-instance v11, Lnet/hockeyapp/android/views/PaintView;

    invoke-direct {v11, p0, v7, v3, v2}, Lnet/hockeyapp/android/views/PaintView;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    iput-object v11, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    .line 66
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v9, "vLayout":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v10, "vParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v5, "hLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v6, "hParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 76
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v11, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/PaintActivity;->setContentView(Landroid/view/View;)V

    .line 82
    const/16 v11, 0x600

    invoke-static {v11}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 83
    .local v8, "toast":Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 90
    const/16 v0, 0x601

    invoke-static {v0}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    const/4 v0, 0x2

    const/16 v1, 0x602

    invoke-static {v1}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    const/4 v0, 0x3

    const/16 v1, 0x603

    invoke-static {v1}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 94
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 124
    iget-object v2, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v2}, Lnet/hockeyapp/android/views/PaintView;->isClear()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v1, Lnet/hockeyapp/android/PaintActivity$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/PaintActivity$1;-><init>(Lnet/hockeyapp/android/PaintActivity;)V

    .line 140
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v2, 0x604

    invoke-static {v2}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v3, 0x606

    .line 142
    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v3, 0x605

    .line 143
    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    const/4 v2, 0x1

    .line 149
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lnet/hockeyapp/android/PaintActivity;->makeResult()V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v1}, Lnet/hockeyapp/android/views/PaintView;->undo()V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v1, p0, Lnet/hockeyapp/android/PaintActivity;->paintView:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v1}, Lnet/hockeyapp/android/views/PaintView;->clearImage()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    const/4 v0, 0x1

    return v0
.end method
