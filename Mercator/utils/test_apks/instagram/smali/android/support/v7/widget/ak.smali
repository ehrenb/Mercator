.class public abstract Landroid/support/v7/widget/ak;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ak$b;,
        Landroid/support/v7/widget/ak$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:I

.field final c:Landroid/view/View;

.field private final d:I

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ak;->i:[I

    .line 73
    iput-object p1, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->a(Landroid/view/View;)V

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ak;->a:F

    .line 83
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ak;->b:I

    .line 86
    iget v0, p0, Landroid/support/v7/widget/ak;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ak;->d:I

    .line 87
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/ak;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->e()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/support/v7/widget/ak$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak$1;-><init>(Landroid/support/v7/widget/ak;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 99
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    iget-object v2, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    .line 202
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 207
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ak;->h:I

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 212
    new-instance v1, Landroid/support/v7/widget/ak$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ak$a;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v1, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    .line 214
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ak;->b:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    iget-object v1, p0, Landroid/support/v7/widget/ak;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 217
    new-instance v1, Landroid/support/v7/widget/ak$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ak$b;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v1, p0, Landroid/support/v7/widget/ak;->f:Ljava/lang/Runnable;

    .line 219
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ak;->f:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ak;->d:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 222
    :pswitch_1
    iget v3, p0, Landroid/support/v7/widget/ak;->h:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 223
    if-ltz v3, :cond_0

    .line 224
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 225
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 228
    iget v5, p0, Landroid/support/v7/widget/ak;->a:F

    invoke-static {v2, v4, v3, v5}, Landroid/support/v7/widget/ak;->a(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 233
    goto :goto_0

    .line 239
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/view/View;FFF)Z
    .locals 2

    .prologue
    .line 319
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/ak;->i:[I

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 332
    return v2
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/ak$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ak$2;-><init>(Landroid/support/v7/widget/ak;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 114
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-object v3, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->a()Landroid/support/v7/view/menu/s;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->f()Z

    move-result v4

    if-nez v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->g()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ai;

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 303
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/ak;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 304
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/ak;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 307
    iget v3, p0, Landroid/support/v7/widget/ak;->h:I

    invoke-virtual {v0, v4, v3}, Landroid/support/v7/widget/ai;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 308
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 312
    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    move v0, v1

    .line 315
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 312
    goto :goto_1

    :cond_3
    move v0, v2

    .line 315
    goto :goto_2
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Landroid/support/v7/widget/ak;->i:[I

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 342
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 343
    return v2
.end method

.method private e()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ak;->g:Z

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ak;->h:I

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/ak;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ak;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/view/menu/s;
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->a()Landroid/support/v7/view/menu/s;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->d()V

    .line 174
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->a()Landroid/support/v7/view/menu/s;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0}, Landroid/support/v7/view/menu/s;->e()V

    .line 191
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method d()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 257
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->f()V

    .line 259
    iget-object v8, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    .line 260
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 275
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 276
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 279
    iput-boolean v9, p0, Landroid/support/v7/widget/ak;->g:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 130
    iget-boolean v10, p0, Landroid/support/v7/widget/ak;->g:Z

    .line 132
    if-eqz v10, :cond_4

    .line 133
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ak;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->c()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v8

    .line 147
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ak;->g:Z

    .line 148
    if-nez v0, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    return v7

    :cond_3
    move v0, v7

    .line 133
    goto :goto_0

    .line 135
    :cond_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ak;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v9, v8

    .line 137
    :goto_1
    if-eqz v9, :cond_5

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 142
    iget-object v1, p0, Landroid/support/v7/widget/ak;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    move v0, v9

    goto :goto_0

    :cond_6
    move v9, v7

    .line 135
    goto :goto_1
.end method
