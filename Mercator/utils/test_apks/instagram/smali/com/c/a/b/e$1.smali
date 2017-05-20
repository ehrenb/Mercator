.class Lcom/c/a/b/e$1;
.super Ljava/lang/Object;
.source "ViewLongClickOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/b/e;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lcom/c/a/b/e;


# direct methods
.method constructor <init>(Lcom/c/a/b/e;Lrx/j;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/c/a/b/e$1;->b:Lcom/c/a/b/e;

    iput-object p2, p0, Lcom/c/a/b/e$1;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/c/a/b/e$1;->b:Lcom/c/a/b/e;

    iget-object v0, v0, Lcom/c/a/b/e;->b:Lrx/b/d;

    invoke-interface {v0}, Lrx/b/d;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/c/a/b/e$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/c/a/b/e$1;->a:Lrx/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
