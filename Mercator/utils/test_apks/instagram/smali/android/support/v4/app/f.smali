.class public Landroid/support/v4/app/f;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/f$c;,
        Landroid/support/v4/app/f$b;,
        Landroid/support/v4/app/f$a;,
        Landroid/support/v4/app/f$d;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/f;
    .locals 2

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/support/v4/app/f$c;

    .line 65
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/i;->a(Landroid/content/Context;II)Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/f$c;-><init>(Landroid/support/v4/app/i;)V

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 67
    new-instance v0, Landroid/support/v4/app/f$b;

    .line 68
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/h;->a(Landroid/content/Context;II)Landroid/support/v4/app/h;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/f$b;-><init>(Landroid/support/v4/app/h;)V

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroid/support/v4/app/f$a;

    .line 71
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/g;->a(Landroid/content/Context;II)Landroid/support/v4/app/g;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/f$a;-><init>(Landroid/support/v4/app/g;)V

    goto :goto_0

    .line 72
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 73
    new-instance v0, Landroid/support/v4/app/f$d;

    .line 74
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/j;->a(Landroid/content/Context;II)Landroid/support/v4/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/f$d;-><init>(Landroid/support/v4/app/j;)V

    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Landroid/support/v4/app/f;

    invoke-direct {v0}, Landroid/support/v4/app/f;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method
