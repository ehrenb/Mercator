.class Lrx/c/a/ai$3;
.super Lrx/j;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ai;->a(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lrx/j;

.field final synthetic c:Lrx/c/b/a;

.field final synthetic d:Lrx/j/d;

.field final synthetic e:Lrx/c/a/ai;

.field private f:Z


# direct methods
.method constructor <init>(Lrx/c/a/ai;Lrx/j;Lrx/c/b/a;Lrx/j/d;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lrx/c/a/ai$3;->e:Lrx/c/a/ai;

    iput-object p2, p0, Lrx/c/a/ai$3;->b:Lrx/j;

    iput-object p3, p0, Lrx/c/a/ai$3;->c:Lrx/c/b/a;

    iput-object p4, p0, Lrx/c/a/ai$3;->d:Lrx/j/d;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lrx/c/a/ai$3;->f:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ai$3;->f:Z

    .line 101
    iget-object v0, p0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 106
    iget-boolean v0, p0, Lrx/c/a/ai$3;->f:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/ai$3;->f:Z

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lrx/c/a/ai$3;->unsubscribe()V

    .line 115
    new-instance v1, Lrx/c/a/ai$3$1;

    invoke-direct {v1, p0}, Lrx/c/a/ai$3$1;-><init>(Lrx/c/a/ai$3;)V

    .line 133
    iget-object v0, p0, Lrx/c/a/ai$3;->d:Lrx/j/d;

    invoke-virtual {v0, v1}, Lrx/j/d;->a(Lrx/k;)V

    .line 135
    iget-wide v2, p0, Lrx/c/a/ai$3;->a:J

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lrx/c/a/ai$3;->c:Lrx/c/b/a;

    invoke-virtual {v0, v2, v3}, Lrx/c/b/a;->a(J)V

    .line 140
    :cond_1
    iget-object v0, p0, Lrx/c/a/ai$3;->e:Lrx/c/a/ai;

    iget-object v0, v0, Lrx/c/a/ai;->a:Lrx/b/e;

    invoke-interface {v0, p1}, Lrx/b/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d;

    .line 142
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/j;)Lrx/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    iget-object v1, p0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-static {v0, v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lrx/c/a/ai$3;->f:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-wide v0, p0, Lrx/c/a/ai$3;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/c/a/ai$3;->a:J

    .line 154
    iget-object v0, p0, Lrx/c/a/ai$3;->b:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lrx/c/a/ai$3;->c:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 160
    return-void
.end method
