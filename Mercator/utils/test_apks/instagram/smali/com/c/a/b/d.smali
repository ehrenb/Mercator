.class final Lcom/c/a/b/d;
.super Ljava/lang/Object;
.source "ViewClickOnSubscribe.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/c/a/b/d;->a:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Lrx/a/a;->verifyMainThread()V

    .line 20
    new-instance v0, Lcom/c/a/b/d$1;

    invoke-direct {v0, p0, p1}, Lcom/c/a/b/d$1;-><init>(Lcom/c/a/b/d;Lrx/j;)V

    .line 28
    new-instance v1, Lcom/c/a/b/d$2;

    invoke-direct {v1, p0}, Lcom/c/a/b/d$2;-><init>(Lcom/c/a/b/d;)V

    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 34
    iget-object v1, p0, Lcom/c/a/b/d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcom/c/a/b/d;->a(Lrx/j;)V

    return-void
.end method
