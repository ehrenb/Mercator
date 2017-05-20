.class final Lb/a/a/q$a;
.super Lb/a/a/i$b;
.source "ServiceInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final c:Lb/a/a/q;


# direct methods
.method public constructor <init>(Lb/a/a/q;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lb/a/a/i$b;-><init>()V

    .line 87
    iput-object p1, p0, Lb/a/a/q$a;->c:Lb/a/a/q;

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1}, Lb/a/a/i$b;->a(Lb/a/a/l;)V

    .line 114
    return-void
.end method

.method protected c(Lb/a/a/b/a;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lb/a/a/i$b;->c(Lb/a/a/b/a;)V

    .line 93
    iget-object v0, p0, Lb/a/a/q$a;->a:Lb/a/a/b/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/q$a;->c:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lb/a/a/q$a;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lb/a/a/q$a;->a:Lb/a/a/b/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/q$a;->c:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lb/a/a/q$a;->b:Lb/a/a/a/g;

    invoke-virtual {v0}, Lb/a/a/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lb/a/a/a/g;->d:Lb/a/a/a/g;

    invoke-virtual {p0, v0}, Lb/a/a/q$a;->a(Lb/a/a/a/g;)V

    .line 99
    invoke-virtual {p0}, Lb/a/a/q$a;->a()Lb/a/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lb/a/a/q$a;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->g()V

    .line 103
    :cond_0
    iget-object v0, p0, Lb/a/a/q$a;->c:Lb/a/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/q;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lb/a/a/q$a;->unlock()V

    .line 109
    :cond_2
    return-void

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/q$a;->unlock()V

    throw v0
.end method
