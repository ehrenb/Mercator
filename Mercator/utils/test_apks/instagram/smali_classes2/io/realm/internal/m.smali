.class public Lio/realm/internal/m;
.super Ljava/lang/Object;
.source "SharedGroupManager.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Lio/realm/internal/SharedGroup;

.field private b:Lio/realm/internal/e;


# direct methods
.method public constructor <init>(Lio/realm/x;)V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/realm/internal/SharedGroup;

    .line 46
    invoke-virtual {p1}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {p1}, Lio/realm/x;->g()Lio/realm/internal/SharedGroup$a;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lio/realm/x;->c()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/SharedGroup;-><init>(Ljava/lang/String;ZLio/realm/internal/SharedGroup$a;[B)V

    iput-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    .line 50
    iget-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->e()Lio/realm/internal/e;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0, p1}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/internal/SharedGroup$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/internal/async/BadVersionException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0, p1}, Lio/realm/internal/e;->a(Lio/realm/internal/SharedGroup$b;)V

    .line 84
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0}, Lio/realm/internal/e;->b()V

    .line 77
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0, p1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lio/realm/internal/SharedGroup$b;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->i()Lio/realm/internal/SharedGroup$b;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->close()V

    .line 59
    iput-object v1, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    .line 60
    iput-object v1, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    .line 61
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0}, Lio/realm/internal/e;->c()V

    .line 112
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0}, Lio/realm/internal/e;->d()V

    .line 119
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    invoke-virtual {v0}, Lio/realm/internal/e;->e()V

    .line 126
    return-void
.end method

.method public g()Lio/realm/internal/e;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lio/realm/internal/m;->b:Lio/realm/internal/e;

    iget-boolean v0, v0, Lio/realm/internal/e;->b:Z

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lio/realm/internal/m;->a:Lio/realm/internal/SharedGroup;

    invoke-virtual {v0}, Lio/realm/internal/SharedGroup;->h()J

    move-result-wide v0

    return-wide v0
.end method
