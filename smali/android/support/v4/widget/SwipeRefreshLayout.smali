.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v4, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 97
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 101
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 106
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 119
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 150
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 873
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 897
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 271
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 276
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 277
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 279
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 281
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 284
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    .line 285
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 287
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 288
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 290
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 291
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 292
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # F

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SwipeRefreshLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 845
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 847
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 849
    if-eqz p2, :cond_0

    .line 850
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 852
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 853
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 854
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 859
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 871
    :goto_0
    return-void

    .line 861
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 862
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 863
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 865
    if-eqz p2, :cond_1

    .line 866
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 868
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 869
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 310
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 311
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 523
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_0

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 525
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 532
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 524
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 687
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 688
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 689
    const/high16 v1, -0x40800000    # -1.0f

    .line 691
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 700
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToStart(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 891
    const/4 v1, 0x0

    .line 892
    .local v1, "targetTop":I
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 893
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 894
    .local v0, "offset":I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 895
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 938
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 939
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 940
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 943
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 944
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 946
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 389
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 189
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 394
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 395
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 396
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 397
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 398
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 930
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    .line 931
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 932
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 933
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 935
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 446
    :goto_0
    return-object v0

    .line 433
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 441
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 443
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 444
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 445
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 425
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 421
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 407
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 413
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 416
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 906
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 907
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 912
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 920
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 921
    if-eqz p2, :cond_0

    .line 922
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 924
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 925
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 926
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 366
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 372
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 376
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 377
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_3

    .line 614
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 615
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 616
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 623
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_1
    move v1, v2

    .line 616
    goto :goto_0

    .line 620
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 623
    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 295
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 305
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 297
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 299
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 300
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 302
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 629
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 631
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 633
    .local v0, "action":I
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 634
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 637
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v5, :cond_2

    .line 683
    :cond_1
    :goto_0
    return v4

    .line 642
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 683
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 644
    :pswitch_1
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v6}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 645
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 646
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 647
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 648
    .local v1, "initialDownY":F
    cmpl-float v5, v1, v7

    if-eqz v5, :cond_1

    .line 651
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_1

    .line 655
    .end local v1    # "initialDownY":F
    :pswitch_2
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v5, v6, :cond_4

    .line 656
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_4
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 661
    .local v2, "y":F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_1

    .line 664
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v3, v2, v4

    .line 665
    .local v3, "yDiff":F
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_3

    .line 666
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 667
    iput-boolean v8, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 668
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v5, 0x4c

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 673
    .end local v2    # "y":F
    .end local v3    # "yDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 678
    :pswitch_4
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 679
    iput v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 546
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 547
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v9, :cond_2

    .line 551
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 553
    :cond_2
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 556
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 557
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 558
    .local v2, "childLeft":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 559
    .local v3, "childTop":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 560
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 561
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 562
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v6

    .line 563
    .local v6, "circleWidth":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v5

    .line 564
    .local v5, "circleHeight":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 570
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 571
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_0

    .line 572
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 574
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_2

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 577
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 581
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 583
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez v1, :cond_3

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 585
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 587
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 589
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 590
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_4

    .line 591
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 589
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 705
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 707
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    if-nez v4, :cond_0

    .line 708
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 711
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 713
    :cond_1
    const/16 v21, 0x0

    .line 841
    :goto_0
    return v21

    .line 716
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 841
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v21, 0x1

    goto :goto_0

    .line 718
    :pswitch_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 719
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 723
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 724
    .local v13, "pointerIndex":I
    if-gez v13, :cond_4

    .line 725
    sget-object v21, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v22, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v21, 0x0

    goto :goto_0

    .line 729
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 730
    .local v20, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v12, v21, v22

    .line 731
    .local v12, "overscrollTop":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v21, v0

    div-float v11, v12, v21

    .line 734
    .local v11, "originalDragPercent":F
    const/16 v21, 0x0

    cmpg-float v21, v11, v21

    if-gez v21, :cond_5

    .line 735
    const/16 v21, 0x0

    goto :goto_0

    .line 737
    :cond_5
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 738
    .local v6, "dragPercent":F
    float-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd999999999999aL    # 0.4

    sub-double v22, v22, v24

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40a00000    # 5.0f

    mul-float v21, v21, v22

    const/high16 v22, 0x40400000    # 3.0f

    div-float v5, v21, v22

    .line 739
    .local v5, "adjustedPercent":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 740
    .local v8, "extraOS":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v15, v21, v22

    .line 742
    .local v15, "slingshotDist":F
    :goto_2
    const/16 v21, 0x0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v15

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v22

    div-float v22, v22, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 744
    .local v19, "tensionSlingshotPercent":F
    const/high16 v21, 0x40800000    # 4.0f

    div-float v21, v19, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/high16 v21, 0x40800000    # 4.0f

    div-float v21, v19, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v18, v21, v22

    .line 746
    .local v18, "tensionPercent":F
    mul-float v21, v15, v18

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v7, v21, v22

    .line 748
    .local v7, "extraMove":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    move/from16 v21, v0

    mul-float v22, v15, v6

    add-float v22, v22, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v17, v21, v22

    .line 751
    .local v17, "targetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_6

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 754
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v22}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v22}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 758
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v21, v0

    cmpg-float v21, v12, v21

    if-gez v21, :cond_c

    .line 759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v21, v0

    div-float v21, v12, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 762
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v21

    const/16 v22, 0x4c

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 765
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 767
    :cond_9
    const v21, 0x3f4ccccd    # 0.8f

    mul-float v16, v5, v21

    .line 768
    .local v16, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const v23, 0x3f4ccccd    # 0.8f

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 777
    .end local v16    # "strokeStart":F
    :cond_a
    :goto_3
    const/high16 v21, -0x41800000    # -0.25f

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v5

    add-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v18

    add-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v14, v21, v22

    .line 778
    .local v14, "rotation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v21, v0

    sub-int v21, v17, v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto/16 :goto_1

    .line 740
    .end local v7    # "extraMove":F
    .end local v14    # "rotation":F
    .end local v15    # "slingshotDist":F
    .end local v17    # "targetY":I
    .end local v18    # "tensionPercent":F
    .end local v19    # "tensionSlingshotPercent":F
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_2

    .line 771
    .restart local v7    # "extraMove":F
    .restart local v15    # "slingshotDist":F
    .restart local v17    # "targetY":I
    .restart local v18    # "tensionPercent":F
    .restart local v19    # "tensionSlingshotPercent":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v21

    const/16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 774
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_3

    .line 785
    .end local v5    # "adjustedPercent":F
    .end local v6    # "dragPercent":F
    .end local v7    # "extraMove":F
    .end local v8    # "extraOS":F
    .end local v11    # "originalDragPercent":F
    .end local v12    # "overscrollTop":F
    .end local v13    # "pointerIndex":I
    .end local v15    # "slingshotDist":F
    .end local v17    # "targetY":I
    .end local v18    # "tensionPercent":F
    .end local v19    # "tensionSlingshotPercent":F
    .end local v20    # "y":F
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 786
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto/16 :goto_1

    .line 791
    .end local v9    # "index":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 796
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 797
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 798
    sget-object v21, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v22, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 802
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 803
    .restart local v13    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 804
    .restart local v20    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v12, v21, v22

    .line 805
    .restart local v12    # "overscrollTop":F
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 806
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    move/from16 v21, v0

    cmpl-float v21, v12, v21

    if-lez v21, :cond_f

    .line 807
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 836
    :goto_4
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 837
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 810
    :cond_f
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 812
    const/4 v10, 0x0

    .line 813
    .local v10, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    .line 814
    new-instance v10, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    .end local v10    # "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 833
    .restart local v10    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v10}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_4

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 697
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 482
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 509
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 510
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 493
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 494
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 495
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 498
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 540
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 541
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .prologue
    .line 323
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 324
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 455
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 474
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 464
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .prologue
    .line 227
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 228
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 230
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 207
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 208
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 209
    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 211
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 212
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 340
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 342
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "endTarget":I
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_0

    .line 345
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 349
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 351
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 352
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    .line 347
    .restart local v0    # "endTarget":I
    :cond_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v0, v1

    goto :goto_0

    .line 354
    .end local v0    # "endTarget":I
    :cond_1
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 236
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 240
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 241
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    .line 248
    :goto_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 250
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_1
.end method
