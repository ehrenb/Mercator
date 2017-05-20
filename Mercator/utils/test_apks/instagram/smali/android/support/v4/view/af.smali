.class Landroid/support/v4/view/af;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static a(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 39
    instance-of v0, p0, Landroid/support/v4/view/ab;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/ab;

    .line 40
    invoke-interface {p0}, Landroid/support/v4/view/ab;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 120
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 123
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 125
    check-cast v0, Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v1, v2

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    .line 125
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 45
    instance-of v0, p0, Landroid/support/v4/view/ab;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Landroid/support/v4/view/ab;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ab;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 57
    instance-of v0, p0, Landroid/support/v4/view/ab;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Landroid/support/v4/view/ab;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ab;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    return-void
.end method

.method static b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 51
    instance-of v0, p0, Landroid/support/v4/view/ab;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/ab;

    .line 52
    invoke-interface {p0}, Landroid/support/v4/view/ab;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 140
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 143
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 144
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 145
    check-cast v0, Landroid/view/View;

    sub-int v3, v1, v2

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 145
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    sget-boolean v0, Landroid/support/v4/view/af;->b:Z

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/af;->a:Ljava/lang/reflect/Field;

    .line 70
    sget-object v0, Landroid/support/v4/view/af;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/af;->b:Z

    .line 77
    :cond_0
    sget-object v0, Landroid/support/v4/view/af;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 79
    :try_start_1
    sget-object v0, Landroid/support/v4/view/af;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 86
    :goto_1
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static e(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    sget-boolean v0, Landroid/support/v4/view/af;->d:Z

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/af;->c:Ljava/lang/reflect/Field;

    .line 93
    sget-object v0, Landroid/support/v4/view/af;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/af;->d:Z

    .line 100
    :cond_0
    sget-object v0, Landroid/support/v4/view/af;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 102
    :try_start_1
    sget-object v0, Landroid/support/v4/view/af;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 109
    :goto_1
    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .prologue
    .line 157
    invoke-static {p0}, Landroid/support/v4/view/af;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 160
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
