.class public final Lcom/c/a/b/b;
.super Ljava/lang/Object;
.source "RxMenuItem.java"


# direct methods
.method public static a(Landroid/view/MenuItem;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "menuItem == null"

    invoke-static {p0, v0}, Lcom/c/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/c/a/b/a;

    sget-object v1, Lcom/c/a/a/a;->b:Lrx/b/e;

    invoke-direct {v0, p0, v1}, Lcom/c/a/b/a;-><init>(Landroid/view/MenuItem;Lrx/b/e;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
