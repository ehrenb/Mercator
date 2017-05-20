.class public abstract Landroid/support/v4/app/am$q;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "q"
.end annotation


# instance fields
.field d:Landroid/support/v4/app/am$d;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/am$q;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1875
    return-void
.end method

.method public a(Landroid/support/v4/app/am$d;)V
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Landroid/support/v4/app/am$q;->d:Landroid/support/v4/app/am$d;

    if-eq v0, p1, :cond_0

    .line 1854
    iput-object p1, p0, Landroid/support/v4/app/am$q;->d:Landroid/support/v4/app/am$d;

    .line 1855
    iget-object v0, p0, Landroid/support/v4/app/am$q;->d:Landroid/support/v4/app/am$d;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/am$q;->d:Landroid/support/v4/app/am$d;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/am$d;->a(Landroid/support/v4/app/am$q;)Landroid/support/v4/app/am$d;

    .line 1859
    :cond_0
    return-void
.end method
