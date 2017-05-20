.class public final Landroid/support/v4/view/aq;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/aq$e;,
        Landroid/support/v4/view/aq$d;,
        Landroid/support/v4/view/aq$b;,
        Landroid/support/v4/view/aq$a;,
        Landroid/support/v4/view/aq$f;,
        Landroid/support/v4/view/aq$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/aq$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Landroid/support/v4/view/aq$e;

    invoke-direct {v0}, Landroid/support/v4/view/aq$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 147
    new-instance v0, Landroid/support/v4/view/aq$d;

    invoke-direct {v0}, Landroid/support/v4/view/aq$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    goto :goto_0

    .line 148
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 149
    new-instance v0, Landroid/support/v4/view/aq$b;

    invoke-direct {v0}, Landroid/support/v4/view/aq$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    goto :goto_0

    .line 150
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 151
    new-instance v0, Landroid/support/v4/view/aq$a;

    invoke-direct {v0}, Landroid/support/v4/view/aq$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    goto :goto_0

    .line 153
    :cond_3
    new-instance v0, Landroid/support/v4/view/aq$f;

    invoke-direct {v0}, Landroid/support/v4/view/aq$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Landroid/support/v4/view/aq;->a:Landroid/support/v4/view/aq$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/aq$c;->a(Landroid/view/ViewGroup;Z)V

    .line 200
    return-void
.end method
