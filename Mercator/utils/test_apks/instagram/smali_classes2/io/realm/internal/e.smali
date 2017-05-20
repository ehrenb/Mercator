.class public Lio/realm/internal/e;
.super Lio/realm/internal/Group;
.source "ImplicitTransaction.java"


# instance fields
.field private final c:Lio/realm/internal/SharedGroup;


# direct methods
.method public constructor <init>(Lio/realm/internal/c;Lio/realm/internal/SharedGroup;J)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lio/realm/internal/Group;-><init>(Lio/realm/internal/c;JZ)V

    .line 27
    iput-object p2, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    .line 28
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lio/realm/internal/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use ImplicitTransaction after it or its parent has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/SharedGroup$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lio/realm/internal/e;->g()V

    .line 45
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0, p1}, Lio/realm/internal/SharedGroup;->a(Lio/realm/internal/SharedGroup$b;)V

    .line 46
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lio/realm/internal/e;->g()V

    .line 35
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->a()V

    .line 36
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lio/realm/internal/e;->g()V

    .line 50
    iget-boolean v0, p0, Lio/realm/internal/e;->b:Z

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nested transactions are not allowed. Use commitTransaction() after each beginTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/e;->b:Z

    .line 54
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->b()V

    .line 55
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lio/realm/internal/e;->g()V

    .line 59
    iget-boolean v0, p0, Lio/realm/internal/e;->b:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->c()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/e;->b:Z

    .line 64
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lio/realm/internal/e;->g()V

    .line 73
    iget-boolean v0, p0, Lio/realm/internal/e;->b:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->d()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/e;->b:Z

    .line 78
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/realm/internal/e;->c:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
