.class Landroid/support/v7/widget/g;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/k;

.field private c:I

.field private d:Landroid/support/v7/widget/g$a;

.field private e:Landroid/support/v7/widget/g$a;

.field private f:Landroid/support/v7/widget/g$a;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/k;

    .line 43
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g$a;

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Landroid/support/v7/widget/g$a;

    invoke-direct {v1}, Landroid/support/v7/widget/g$a;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g$a;

    .line 214
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g$a;

    .line 215
    invoke-virtual {v1}, Landroid/support/v7/widget/bh;->a()V

    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ae;->B(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_1

    .line 219
    iput-boolean v0, v1, Landroid/support/v7/widget/bh;->e:Z

    .line 220
    iput-object v2, v1, Landroid/support/v7/widget/bh;->b:Landroid/content/res/ColorStateList;

    .line 222
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ae;->C(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_2

    .line 224
    iput-boolean v0, v1, Landroid/support/v7/widget/bh;->d:Z

    .line 225
    iput-object v2, v1, Landroid/support/v7/widget/bh;->c:Landroid/graphics/PorterDuff$Mode;

    .line 228
    :cond_2
    iget-boolean v2, v1, Landroid/support/v7/widget/bh;->e:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/widget/bh;->d:Z

    if-eqz v2, :cond_4

    .line 229
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bh;[I)V

    .line 233
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/g$a;->e:Z

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Landroid/support/v7/widget/g;->c:I

    if-ltz v1, :cond_0

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/k;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/g;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v4, v4, Landroid/support/v7/widget/g$a;->a:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/k;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iput-object v1, v2, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v1, v1, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v2, v2, Landroid/support/v7/widget/g$a;->a:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v2, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v2, v2, Landroid/support/v7/widget/g$a;->a:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    if-eq v2, v3, :cond_0

    .line 201
    iget-object v2, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v0, v0, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 74
    iput p1, p0, Landroid/support/v7/widget/g;->c:I

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    .line 83
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/support/v7/widget/g$a;

    invoke-direct {v0}, Landroid/support/v7/widget/g$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iput-object p1, v0, Landroid/support/v7/widget/g$a;->a:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/g$a;->e:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    .line 109
    :cond_1
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/support/v7/widget/g$a;

    invoke-direct {v0}, Landroid/support/v7/widget/g$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iput-object p1, v0, Landroid/support/v7/widget/g$a;->c:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/g$a;->d:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    .line 149
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    .line 93
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/bj;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bj;

    move-result-object v1

    .line 49
    :try_start_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bj;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bj;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/g;->c:I

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/g;->b:Landroid/support/v7/widget/k;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/g;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bj;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bj;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bj;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bj;->a(II)I

    move-result v2

    const/4 v3, 0x0

    .line 64
    invoke-static {v2, v3}, Landroid/support/v7/widget/ah;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->a()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->a()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v0, v0, Landroid/support/v7/widget/g$a;->c:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 176
    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/support/v7/widget/g$a;

    invoke-direct {v0}, Landroid/support/v7/widget/g$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    iput-object p1, v0, Landroid/support/v7/widget/g$a;->b:Landroid/content/res/ColorStateList;

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/g$a;->e:Z

    .line 185
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->c()V

    .line 186
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Landroid/support/v7/widget/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-direct {p0, v0}, Landroid/support/v7/widget/g;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Landroid/support/v7/widget/g;->e:Landroid/support/v7/widget/g$a;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 166
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bh;[I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Landroid/support/v7/widget/g;->d:Landroid/support/v7/widget/g$a;

    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/view/View;

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bh;[I)V

    goto :goto_0
.end method
