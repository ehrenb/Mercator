.class Lcom/c/a/b/a$1;
.super Ljava/lang/Object;
.source "MenuItemClickOnSubscribe.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/a/b/a;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lcom/c/a/b/a;


# direct methods
.method constructor <init>(Lcom/c/a/b/a;Lrx/j;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/c/a/b/a$1;->b:Lcom/c/a/b/a;

    iput-object p2, p0, Lcom/c/a/b/a$1;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/c/a/b/a$1;->b:Lcom/c/a/b/a;

    iget-object v0, v0, Lcom/c/a/b/a;->b:Lrx/b/e;

    iget-object v1, p0, Lcom/c/a/b/a$1;->b:Lcom/c/a/b/a;

    iget-object v1, v1, Lcom/c/a/b/a;->a:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/c/a/b/a$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/c/a/b/a$1;->a:Lrx/j;

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
