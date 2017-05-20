.class public Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;
.super Landroid/widget/FrameLayout;
.source "LikeButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private static final DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private isChecked:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

.field private vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;

.field private vHeart:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 27
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->init()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Lcm/aptoide/pt/v8engine/customviews/CircleView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Lcm/aptoide/pt/v8engine/customviews/DotsView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->view_like_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->vHeart:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->vDotsView:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/customviews/DotsView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;

    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->vCircle:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/customviews/CircleView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    .line 47
    invoke-virtual {p0, p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method private setChecked(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->isChecked:Z

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v9, 0x1

    const-wide/16 v6, 0xfa

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->isChecked:Z

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->heart_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/customviews/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/customviews/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->setCurrentProgress(F)V

    .line 124
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    sget-object v1, Lcm/aptoide/pt/v8engine/customviews/CircleView;->OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    .line 127
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    sget-object v1, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vCircle:Lcm/aptoide/pt/v8engine/customviews/CircleView;

    sget-object v2, Lcm/aptoide/pt/v8engine/customviews/CircleView;->INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    .line 132
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 135
    sget-object v2, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    .line 138
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 139
    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 141
    sget-object v3, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView;->SCALE_X:Landroid/util/Property;

    new-array v5, v8, [F

    fill-array-data v5, :array_3

    .line 144
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 145
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 147
    sget-object v4, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vDotsView:Lcm/aptoide/pt/v8engine/customviews/DotsView;

    sget-object v5, Lcm/aptoide/pt/v8engine/customviews/DotsView;->DOTS_PROGRESS:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_4

    .line 150
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 151
    const-wide/16 v6, 0x384

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    const-wide/16 v6, 0x32

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 153
    sget-object v5, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v5, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v9

    aput-object v2, v6, v8

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView$1;-><init>(Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    iput-boolean v9, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->isChecked:Z

    .line 171
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 174
    :cond_1
    return-void

    .line 126
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 137
    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 143
    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 149
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 67
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 73
    cmpl-float v4, v2, v5

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    cmpl-float v2, v3, v5

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    move v0, v1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->isPressed()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 80
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 84
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->performClick()Z

    .line 86
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setPressed(Z)V

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHeartState(Z)V
    .locals 2

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->heart_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setChecked(Z)V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->heart_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->vHeart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-super {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
