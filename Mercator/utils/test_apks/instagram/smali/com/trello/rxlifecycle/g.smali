.class final Lcom/trello/rxlifecycle/g;
.super Ljava/lang/Object;
.source "UntilEventCompletableTransformer.java"

# interfaces
.implements Lrx/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$c;"
    }
.end annotation


# instance fields
.field final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/trello/rxlifecycle/g;->a:Lrx/d;

    .line 20
    iput-object p2, p0, Lcom/trello/rxlifecycle/g;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lrx/a;)Lrx/a;
    .locals 4

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/trello/rxlifecycle/g;->a:Lrx/d;

    iget-object v3, p0, Lcom/trello/rxlifecycle/g;->b:Ljava/lang/Object;

    .line 27
    invoke-static {v2, v3}, Lcom/trello/rxlifecycle/d;->a(Lrx/d;Ljava/lang/Object;)Lrx/d;

    move-result-object v2

    sget-object v3, Lcom/trello/rxlifecycle/a;->c:Lrx/b/e;

    .line 28
    invoke-virtual {v2, v3}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lrx/d;->c()Lrx/a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Lrx/a;->a([Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lrx/a;

    invoke-virtual {p0, p1}, Lcom/trello/rxlifecycle/g;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 38
    check-cast p1, Lcom/trello/rxlifecycle/g;

    .line 40
    iget-object v1, p0, Lcom/trello/rxlifecycle/g;->a:Lrx/d;

    iget-object v2, p1, Lcom/trello/rxlifecycle/g;->a:Lrx/d;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/trello/rxlifecycle/g;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/trello/rxlifecycle/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/trello/rxlifecycle/g;->a:Lrx/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trello/rxlifecycle/g;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    return v0
.end method
