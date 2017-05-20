.class abstract Landroid/support/v7/a/h;
.super Landroid/support/v7/a/g;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/a/h$b;,
        Landroid/support/v7/a/h$a;
    }
.end annotation


# static fields
.field private static m:Z

.field private static final n:Z

.field private static final o:[I


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/support/v7/a/f;

.field f:Landroid/support/v7/a/a;

.field g:Landroid/view/MenuInflater;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/a/h;->n:Z

    .line 51
    sget-boolean v0, Landroid/support/v7/a/h;->n:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/a/h;->m:Z

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/support/v7/a/h$1;

    invoke-direct {v3, v0}, Landroid/support/v7/a/h$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    sput-boolean v1, Landroid/support/v7/a/h;->m:Z

    .line 84
    :cond_0
    new-array v0, v1, [I

    const v1, 0x1010054

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/a/h;->o:[I

    return-void

    :cond_1
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/a/g;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    .line 114
    iput-object p3, p0, Landroid/support/v7/a/h;->e:Landroid/support/v7/a/f;

    .line 116
    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    .line 117
    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/a/h$b;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/a/h;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/h;->d:Landroid/view/Window$Callback;

    .line 123
    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/a/h;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 125
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/a/h;->o:[I

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/bj;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->a()V

    .line 132
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/support/v7/a/h;->m()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Landroid/support/v7/a/h$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/h$b;-><init>(Landroid/support/v7/a/h;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v7/a/h;->p:Ljava/lang/CharSequence;

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/a/h;->b(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method abstract b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/v7/a/h;->m()V

    .line 157
    new-instance v1, Landroid/support/v7/view/g;

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    .line 158
    invoke-virtual {v0}, Landroid/support/v7/a/a;->c()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 158
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public c()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->q:Z

    .line 244
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/h;->q:Z

    .line 249
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/h;->r:Z

    .line 254
    return-void
.end method

.method public final h()Landroid/support/v7/a/b$a;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Landroid/support/v7/a/h$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/h$a;-><init>(Landroid/support/v7/a/h;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method abstract m()V
.end method

.method final n()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/a/h;->f:Landroid/support/v7/a/a;

    return-object v0
.end method

.method final o()Landroid/content/Context;
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/a/h;->a()Landroid/support/v7/a/a;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/support/v7/a/a;->c()Landroid/content/Context;

    move-result-object v0

    .line 191
    :cond_0
    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Landroid/support/v7/a/h;->a:Landroid/content/Context;

    .line 194
    :cond_1
    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method final q()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/support/v7/a/h;->r:Z

    return v0
.end method

.method final r()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v7/a/h;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final s()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/v7/a/h;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/h;->p:Ljava/lang/CharSequence;

    goto :goto_0
.end method
