.class public Landroid/support/v4/view/a/c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/a/c$e;,
        Landroid/support/v4/view/a/c$d;,
        Landroid/support/v4/view/a/c$c;,
        Landroid/support/v4/view/a/c$b;,
        Landroid/support/v4/view/a/c$k;,
        Landroid/support/v4/view/a/c$j;,
        Landroid/support/v4/view/a/c$i;,
        Landroid/support/v4/view/a/c$h;,
        Landroid/support/v4/view/a/c$f;,
        Landroid/support/v4/view/a/c$l;,
        Landroid/support/v4/view/a/c$g;,
        Landroid/support/v4/view/a/c$n;,
        Landroid/support/v4/view/a/c$m;,
        Landroid/support/v4/view/a/c$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/a/c$g;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2342
    new-instance v0, Landroid/support/v4/view/a/c$e;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    .line 2362
    :goto_0
    return-void

    .line 2343
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2344
    new-instance v0, Landroid/support/v4/view/a/c$d;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2345
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 2346
    new-instance v0, Landroid/support/v4/view/a/c$c;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2347
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2348
    new-instance v0, Landroid/support/v4/view/a/c$b;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2349
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 2350
    new-instance v0, Landroid/support/v4/view/a/c$k;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2351
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 2352
    new-instance v0, Landroid/support/v4/view/a/c$j;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2353
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 2354
    new-instance v0, Landroid/support/v4/view/a/c$i;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2355
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 2356
    new-instance v0, Landroid/support/v4/view/a/c$h;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2357
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    .line 2358
    new-instance v0, Landroid/support/v4/view/a/c$f;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0

    .line 2360
    :cond_8
    new-instance v0, Landroid/support/v4/view/a/c$l;

    invoke-direct {v0}, Landroid/support/v4/view/a/c$l;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput-object p1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    .line 2762
    return-void
.end method

.method public static a(Landroid/support/v4/view/a/c;)Landroid/support/v4/view/a/c;
    .locals 2

    .prologue
    .line 2814
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/c;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/a/c;
    .locals 1

    .prologue
    .line 2748
    if-eqz p0, :cond_0

    .line 2749
    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/c;-><init>(Ljava/lang/Object;)V

    .line 2751
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4470
    sparse-switch p0, :sswitch_data_0

    .line 4508
    const-string v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    .line 4472
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_0

    .line 4474
    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    .line 4476
    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_0

    .line 4478
    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    .line 4480
    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    .line 4482
    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_0

    .line 4484
    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 4486
    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 4488
    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 4490
    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 4492
    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    .line 4494
    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    .line 4496
    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    .line 4498
    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    .line 4500
    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_0

    .line 4502
    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_0

    .line 4504
    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_0

    .line 4506
    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    .line 4470
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 3007
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;I)V

    .line 3008
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3183
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3184
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2823
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 2824
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3563
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->d(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3564
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 3246
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;Z)V

    .line 3247
    return-void
.end method

.method public a(Landroid/support/v4/view/a/c$a;)Z
    .locals 3

    .prologue
    .line 3040
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    iget-object v2, p1, Landroid/support/v4/view/a/c$a;->E:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 2992
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3198
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3199
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2929
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 2930
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3587
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3588
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3761
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/a/c$m;

    iget-object v2, p1, Landroid/support/v4/view/a/c$m;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3762
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 3270
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;Z)V

    .line 3271
    return-void
.end method

.method public c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3207
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3208
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3151
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 3152
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3611
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->e(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3612
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3765
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/a/c$n;

    iget-object v2, p1, Landroid/support/v4/view/a/c$n;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3766
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 3294
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->e(Ljava/lang/Object;Z)V

    .line 3295
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 3231
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3222
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3223
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3906
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->d(Ljava/lang/Object;Landroid/view/View;)V

    .line 3907
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3635
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3636
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 3318
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->f(Ljava/lang/Object;Z)V

    .line 3319
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3255
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3887
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3888
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 3343
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->j(Ljava/lang/Object;Z)V

    .line 3344
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 3279
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4405
    if-ne p0, p1, :cond_1

    .line 4422
    :cond_0
    :goto_0
    return v0

    .line 4408
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 4409
    goto :goto_0

    .line 4411
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 4412
    goto :goto_0

    .line 4414
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/c;

    .line 4415
    iget-object v2, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 4416
    iget-object v2, p1, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 4417
    goto :goto_0

    .line 4419
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4420
    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 3368
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->k(Ljava/lang/Object;Z)V

    .line 3369
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3303
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 3392
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->i(Ljava/lang/Object;Z)V

    .line 3393
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 3327
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 3416
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;Z)V

    .line 3417
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 3352
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 4400
    iget-object v0, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 2

    .prologue
    .line 3440
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->g(Ljava/lang/Object;Z)V

    .line 3441
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 3377
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 3464
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->d(Ljava/lang/Object;Z)V

    .line 3465
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 3401
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k(Z)V
    .locals 2

    .prologue
    .line 3512
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->h(Ljava/lang/Object;Z)V

    .line 3513
    return-void
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 3425
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .locals 2

    .prologue
    .line 3837
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c$g;->l(Ljava/lang/Object;Z)V

    .line 3838
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 3449
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 3473
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 3497
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3548
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3572
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3596
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3620
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 3646
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->q(Ljava/lang/Object;)V

    .line 3647
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3677
    sget-object v0, Landroid/support/v4/view/a/c;->a:Landroid/support/v4/view/a/c$g;

    iget-object v1, p0, Landroid/support/v4/view/a/c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c$g;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4428
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4432
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/c;->a(Landroid/graphics/Rect;)V

    .line 4433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/c;->c(Landroid/graphics/Rect;)V

    .line 4436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    const-string v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4439
    const-string v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4440
    const-string v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4441
    const-string v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->r()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4442
    const-string v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    const-string v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4445
    const-string v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4446
    const-string v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4447
    const-string v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4448
    const-string v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4449
    const-string v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4450
    const-string v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4451
    const-string v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4452
    const-string v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    const-string v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4456
    invoke-virtual {p0}, Landroid/support/v4/view/a/c;->b()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4457
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 4458
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 4459
    invoke-static {v2}, Landroid/support/v4/view/a/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    if-eqz v0, :cond_0

    .line 4461
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4464
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
