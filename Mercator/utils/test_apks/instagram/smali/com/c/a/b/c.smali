.class public final Lcom/c/a/b/c;
.super Ljava/lang/Object;
.source "RxView.java"


# direct methods
.method public static a(Landroid/view/View;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/c/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/c/a/b/d;

    invoke-direct {v0, p0}, Lcom/c/a/b/d;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/c/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/c/a/b/e;

    sget-object v1, Lcom/c/a/a/a;->a:Lrx/b/d;

    invoke-direct {v0, p0, v1}, Lcom/c/a/b/e;-><init>(Landroid/view/View;Lrx/b/d;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
