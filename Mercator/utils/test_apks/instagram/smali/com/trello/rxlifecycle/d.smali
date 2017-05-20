.class final Lcom/trello/rxlifecycle/d;
.super Ljava/lang/Object;
.source "TakeUntilGenerator.java"


# direct methods
.method static a(Lrx/d;Ljava/lang/Object;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;TT;)",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/trello/rxlifecycle/d$1;

    invoke-direct {v0, p1}, Lcom/trello/rxlifecycle/d$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/d;->k(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static a(Lrx/d;Lrx/b/e;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;",
            "Lrx/b/e",
            "<TT;TT;>;)",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lrx/d;->b(I)Lrx/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v1}, Lrx/d;->a(I)Lrx/d;

    move-result-object v1

    new-instance v2, Lcom/trello/rxlifecycle/d$2;

    invoke-direct {v2}, Lcom/trello/rxlifecycle/d$2;-><init>()V

    .line 24
    invoke-static {v0, v1, v2}, Lrx/d;->a(Lrx/d;Lrx/d;Lrx/b/f;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a;->a:Lrx/b/e;

    .line 33
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a;->b:Lrx/b/e;

    .line 34
    invoke-virtual {v0, v1}, Lrx/d;->k(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 24
    return-object v0
.end method
