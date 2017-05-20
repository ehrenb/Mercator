.class Landroid/support/v7/a/k;
.super Landroid/support/v7/a/j;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/a/k$b;,
        Landroid/support/v7/a/k$a;
    }
.end annotation


# instance fields
.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/support/v7/a/k$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/a/j;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/a/f;)V

    .line 44
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/a/k;->t:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/k;->v:Z

    .line 54
    return-void
.end method

.method private h(I)Z
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 192
    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    .line 194
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x20

    .line 198
    :goto_0
    if-eq v3, v0, :cond_2

    .line 199
    invoke-direct {p0}, Landroid/support/v7/a/k;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 231
    :goto_1
    const/4 v0, 0x1

    .line 237
    :goto_2
    return v0

    .line 194
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 211
    :cond_1
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 212
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 213
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 216
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, -0x31

    or-int/2addr v0, v5

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 219
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    iput v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 222
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 227
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 228
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private x()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Landroid/support/v7/a/k;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/a/k;->t:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/a/k;->k()I

    move-result v0

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/support/v7/a/k$b;

    iget-object v1, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/a/r;->a(Landroid/content/Context;)Landroid/support/v7/a/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/a/k$b;-><init>(Landroid/support/v7/a/k;Landroid/support/v7/a/r;)V

    iput-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    .line 244
    :cond_0
    return-void
.end method

.method private z()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 253
    iget-boolean v2, p0, Landroid/support/v7/a/k;->u:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 258
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 258
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 262
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 262
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 266
    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/support/v7/a/k$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/a/k$a;-><init>(Landroid/support/v7/a/k;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/a/j;->a(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/a/k;->t:I

    if-ne v0, v1, :cond_0

    .line 63
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/k;->t:I

    .line 66
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v7/a/j;->c()V

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/a/k;->j()Z

    .line 112
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v7/a/j;->c(Landroid/os/Bundle;)V

    .line 169
    iget v0, p0, Landroid/support/v7/a/k;->t:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 171
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/a/k;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :cond_0
    return-void
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 148
    sparse-switch p1, :sswitch_data_0

    .line 156
    :goto_0
    return p1

    .line 150
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/a/k;->y()V

    .line 151
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    invoke-virtual {v0}, Landroid/support/v7/a/k$b;->a()I

    move-result p1

    goto :goto_0

    .line 154
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v7/a/j;->d()V

    .line 119
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    invoke-virtual {v0}, Landroid/support/v7/a/k$b;->d()V

    .line 122
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v7/a/j;->g()V

    .line 180
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    invoke-virtual {v0}, Landroid/support/v7/a/k$b;->d()V

    .line 183
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/support/v7/a/k;->x()I

    move-result v1

    .line 90
    invoke-virtual {p0, v1}, Landroid/support/v7/a/k;->d(I)I

    move-result v2

    .line 91
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 92
    invoke-direct {p0, v2}, Landroid/support/v7/a/k;->h(I)Z

    move-result v0

    .line 95
    :cond_0
    if-nez v1, :cond_1

    .line 97
    invoke-direct {p0}, Landroid/support/v7/a/k;->y()V

    .line 98
    iget-object v1, p0, Landroid/support/v7/a/k;->w:Landroid/support/v7/a/k$b;

    invoke-virtual {v1}, Landroid/support/v7/a/k$b;->c()V

    .line 101
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/a/k;->u:Z

    .line 102
    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/v7/a/k;->v:Z

    return v0
.end method
