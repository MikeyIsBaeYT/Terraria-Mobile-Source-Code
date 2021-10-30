.class public Lnet/hockeyapp/android/views/LoginView;
.super Landroid/widget/LinearLayout;
.source "LoginView.java"


# static fields
.field public static final EMAIL_INPUT_ID:I = 0x3003

.field public static final HEADLINE_TEXT_ID:I = 0x3002

.field public static final LOGIN_BUTTON_ID:I = 0x3005

.field public static final PASSWORD_INPUT_ID:I = 0x3004

.field public static final WRAPPER_BASE_ID:I = 0x3001


# instance fields
.field private wrapperBase:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/LoginView;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadLayoutParams(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadWrapperBase(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadHeadlineTextView(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadEmailInput(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadPasswordInput(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->loadLoginButton(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 181
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 182
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 183
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 184
    return-object v0

    .line 182
    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method

.method private getEditTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 200
    .local v3, "outerPadding":I
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 201
    .local v5, "outerShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 202
    .local v4, "outerPaint":Landroid/graphics/Paint;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 208
    .local v0, "innerPadding":I
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 209
    .local v2, "innerShape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 210
    .local v1, "innerPaint":Landroid/graphics/Paint;
    const v6, -0xbbbbbc

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    invoke-virtual {v2, v10, v10, v10, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 215
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v10

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method private loadEmailInput(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 119
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v3, 0x3003

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 124
    .local v1, "margin":I
    invoke-virtual {v2, v6, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/16 v3, 0x502

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 129
    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 131
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 134
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/LoginView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 136
    iget-object v3, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private loadHeadlineTextView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 102
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 105
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 107
    .local v0, "margin":I
    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/16 v3, 0x500

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    const/4 v3, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 115
    iget-object v3, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/LoginView;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/LoginView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method private loadLoginButton(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 163
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "button":Landroid/widget/Button;
    const/16 v3, 0x3005

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 168
    .local v1, "margin":I
    invoke-virtual {v2, v6, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-direct {p0}, Lnet/hockeyapp/android/views/LoginView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/16 v3, 0x504

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 176
    iget-object v3, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method private loadPasswordInput(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 140
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "editText":Landroid/widget/EditText;
    const/16 v3, 0x3004

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setId(I)V

    .line 143
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 145
    .local v1, "margin":I
    invoke-virtual {v2, v6, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const/16 v3, 0x503

    invoke-static {v3}, Lnet/hockeyapp/android/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 150
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 151
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 152
    const v3, -0x777778

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 153
    const/4 v3, 0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 155
    const v3, -0x333334

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 156
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/LoginView;->setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 158
    iget-object v3, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method private loadWrapperBase(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 87
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    .line 88
    iget-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    const/16 v3, 0x3001

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/LoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 92
    .local v0, "padding":I
    const/16 v2, 0x31

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    iget-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    iget-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v2, p0, Lnet/hockeyapp/android/views/LoginView;->wrapperBase:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/LoginView;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method private setEditTextBackground(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/LoginView;->getEditTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    return-void
.end method
