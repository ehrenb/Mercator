.class Landroid/support/v7/a/m$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/m;


# direct methods
.method constructor <init>(Landroid/support/v7/a/m;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    iget v0, v0, Landroid/support/v7/a/m;->s:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    invoke-virtual {v0, v2}, Landroid/support/v7/a/m;->f(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    iget v0, v0, Landroid/support/v7/a/m;->s:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/support/v7/a/m;->f(I)V

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    iput-boolean v2, v0, Landroid/support/v7/a/m;->r:Z

    .line 135
    iget-object v0, p0, Landroid/support/v7/a/m$1;->a:Landroid/support/v7/a/m;

    iput v2, v0, Landroid/support/v7/a/m;->s:I

    .line 136
    return-void
.end method
