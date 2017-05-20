.class public Landroid/support/b/a/b;
.super Landroid/support/b/a/e;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/b/a/b$a;,
        Landroid/support/b/a/b$b;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/drawable/Drawable$Callback;

.field private c:Landroid/support/b/a/b$a;

.field private d:Landroid/content/Context;

.field private e:Landroid/animation/ArgbEvaluator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0, v0}, Landroid/support/b/a/b;-><init>(Landroid/content/Context;Landroid/support/b/a/b$a;Landroid/content/res/Resources;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0, v0}, Landroid/support/b/a/b;-><init>(Landroid/content/Context;Landroid/support/b/a/b$a;Landroid/content/res/Resources;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/b/a/b$a;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/b/a/e;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/b;->e:Landroid/animation/ArgbEvaluator;

    .line 657
    new-instance v0, Landroid/support/b/a/b$1;

    invoke-direct {v0, p0}, Landroid/support/b/a/b$1;-><init>(Landroid/support/b/a/b;)V

    iput-object v0, p0, Landroid/support/b/a/b;->a:Landroid/graphics/drawable/Drawable$Callback;

    .line 93
    iput-object p1, p0, Landroid/support/b/a/b;->d:Landroid/content/Context;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iput-object p2, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v0, Landroid/support/b/a/b$a;

    iget-object v1, p0, Landroid/support/b/a/b;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/b/a/b$a;-><init>(Landroid/content/Context;Landroid/support/b/a/b$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    goto :goto_0
.end method

.method static a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    if-nez p1, :cond_0

    .line 349
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Landroid/support/b/a/b;

    invoke-direct {v0, p0}, Landroid/support/b/a/b;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/b/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 164
    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 555
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 556
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_0

    .line 558
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 559
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Landroid/support/b/a/b;->a(Landroid/animation/Animator;)V

    .line 558
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 564
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 565
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 566
    const-string v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    :cond_1
    iget-object v0, p0, Landroid/support/b/a/b;->e:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 568
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/b/a/b;->e:Landroid/animation/ArgbEvaluator;

    .line 570
    :cond_2
    iget-object v0, p0, Landroid/support/b/a/b;->e:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 573
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 577
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 578
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 579
    invoke-direct {p0, p2}, Landroid/support/b/a/b;->a(Landroid/animation/Animator;)V

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    .line 583
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1}, Landroid/support/v4/f/a;-><init>()V

    iput-object v1, v0, Landroid/support/b/a/b$a;->d:Landroid/support/v4/f/a;

    .line 585
    :cond_1
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->d:Landroid/support/v4/f/a;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v3, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    .line 610
    if-nez v3, :cond_0

    move v0, v1

    .line 620
    :goto_0
    return v0

    .line 613
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 614
    :goto_1
    if-ge v2, v4, :cond_2

    .line 615
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 616
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const/4 v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 620
    goto :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 432
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->draw(Landroid/graphics/Canvas;)V

    .line 198
    invoke-direct {p0}, Landroid/support/b/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/support/b/a/b;->invalidateSelf()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/b/a/e;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget v1, v1, Landroid/support/b/a/b$a;->a:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Landroid/support/b/a/b$b;

    iget-object v1, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/b/a/b$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/b/a/e;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/b/a/b;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 423
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 417
    :cond_0
    return-void

    .line 361
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 362
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 365
    :goto_0
    if-eq v0, v6, :cond_0

    .line 366
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 367
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 368
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v2, "animated-vector"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    sget-object v0, Landroid/support/b/a/a;->e:[I

    .line 374
    invoke-static {p1, p4, p3, v0}, Landroid/support/b/a/b;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 382
    if-eqz v2, :cond_4

    .line 383
    invoke-static {p1, v2, p4}, Landroid/support/b/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/b/a/f;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v5}, Landroid/support/b/a/f;->a(Z)V

    .line 386
    iget-object v3, p0, Landroid/support/b/a/b;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v2, v3}, Landroid/support/b/a/f;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 387
    iget-object v3, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v3, v3, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    if-eqz v3, :cond_3

    .line 388
    iget-object v3, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v3, v3, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/b/a/f;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 390
    :cond_3
    iget-object v3, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iput-object v2, v3, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    .line 392
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 415
    :cond_5
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 393
    :cond_6
    const-string v2, "target"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    sget-object v0, Landroid/support/b/a/a;->f:[I

    .line 395
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 402
    if-eqz v3, :cond_7

    .line 403
    iget-object v4, p0, Landroid/support/b/a/b;->d:Landroid/content/Context;

    if-eqz v4, :cond_8

    .line 404
    iget-object v4, p0, Landroid/support/b/a/b;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 405
    invoke-direct {p0, v2, v3}, Landroid/support/b/a/b;->a(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 411
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 407
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->isAutoMirrored()Z

    move-result v0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    .line 605
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v3, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 599
    :goto_1
    if-ge v2, v4, :cond_2

    .line 600
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 601
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0}, Landroid/support/b/a/f;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/b/a/e;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 106
    return-object p0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mutate() is not supported for older platform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setAlpha(I)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setAutoMirrored(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/b/a/e;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/b/a/e;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/b/a/e;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/b/a/e;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/b/a/e;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/b/a/e;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1}, Landroid/support/b/a/f;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 290
    :goto_0
    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v0, v0, Landroid/support/b/a/b$a;->b:Landroid/support/b/a/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/b/a/f;->setVisible(ZZ)Z

    .line 290
    invoke-super {p0, p1, p2}, Landroid/support/b/a/e;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 625
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-direct {p0}, Landroid/support/b/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v2, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    .line 635
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 636
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 637
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 638
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 636
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 640
    :cond_2
    invoke-virtual {p0}, Landroid/support/b/a/b;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Landroid/support/b/a/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 655
    :cond_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Landroid/support/b/a/b;->c:Landroid/support/b/a/b$a;

    iget-object v2, v0, Landroid/support/b/a/b$a;->c:Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 651
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 652
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 653
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 651
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
