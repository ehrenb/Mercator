.class public Lcom/trello/rxlifecycle/c;
.super Ljava/lang/Object;
.source "RxLifecycle.java"


# direct methods
.method public static a(Lrx/d;Ljava/lang/Object;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TR;>;TR;)",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "lifecycle == null"

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v0, "event == null"

    invoke-static {p1, v0}, Lcom/trello/rxlifecycle/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/trello/rxlifecycle/h;

    invoke-direct {v0, p0, p1}, Lcom/trello/rxlifecycle/h;-><init>(Lrx/d;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/d;Lrx/b/e;)Lcom/trello/rxlifecycle/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TR;>;",
            "Lrx/b/e",
            "<TR;TR;>;)",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "lifecycle == null"

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "correspondingEvents == null"

    invoke-static {p1, v0}, Lcom/trello/rxlifecycle/c/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lcom/trello/rxlifecycle/f;

    invoke-virtual {p0}, Lrx/d;->l()Lrx/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trello/rxlifecycle/f;-><init>(Lrx/d;Lrx/b/e;)V

    return-object v0
.end method
