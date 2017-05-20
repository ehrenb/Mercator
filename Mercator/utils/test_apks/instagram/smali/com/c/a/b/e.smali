.class final Lcom/c/a/b/e;
.super Ljava/lang/Object;
.source "ViewLongClickOnSubscribe.java"

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

.field final b:Lrx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Lrx/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/b/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/c/a/b/e;->a:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/c/a/b/e;->b:Lrx/b/d;

    .line 18
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
    .line 21
    invoke-static {}, Lrx/a/a;->verifyMainThread()V

    .line 23
    new-instance v0, Lcom/c/a/b/e$1;

    invoke-direct {v0, p0, p1}, Lcom/c/a/b/e$1;-><init>(Lcom/c/a/b/e;Lrx/j;)V

    .line 35
    new-instance v1, Lcom/c/a/b/e$2;

    invoke-direct {v1, p0}, Lcom/c/a/b/e$2;-><init>(Lcom/c/a/b/e;)V

    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 41
    iget-object v1, p0, Lcom/c/a/b/e;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcom/c/a/b/e;->a(Lrx/j;)V

    return-void
.end method
