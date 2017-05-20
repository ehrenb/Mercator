.class public final Landroid/support/v4/app/q;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 55
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/s;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/r;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
