.class Lrx/a$7;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/b/a;Lrx/b/b;)Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/b/a;

.field final synthetic c:Lrx/j/c;

.field final synthetic d:Lrx/b/b;

.field final synthetic e:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/b/a;Lrx/j/c;Lrx/b/b;)V
    .locals 0

    .prologue
    .line 1974
    iput-object p1, p0, Lrx/a$7;->e:Lrx/a;

    iput-object p2, p0, Lrx/a$7;->b:Lrx/b/a;

    iput-object p3, p0, Lrx/a$7;->c:Lrx/j/c;

    iput-object p4, p0, Lrx/a$7;->d:Lrx/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1978
    iget-boolean v0, p0, Lrx/a$7;->a:Z

    if-nez v0, :cond_0

    .line 1979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/a$7;->a:Z

    .line 1981
    :try_start_0
    iget-object v0, p0, Lrx/a$7;->b:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    iget-object v0, p0, Lrx/a$7;->c:Lrx/j/c;

    invoke-virtual {v0}, Lrx/j/c;->unsubscribe()V

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    invoke-virtual {p0, v0}, Lrx/a$7;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1992
    iget-boolean v0, p0, Lrx/a$7;->a:Z

    if-nez v0, :cond_0

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/a$7;->a:Z

    .line 1994
    invoke-virtual {p0, p1}, Lrx/a$7;->b(Ljava/lang/Throwable;)V

    .line 1999
    :goto_0
    return-void

    .line 1996
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 1997
    invoke-static {p1}, Lrx/a;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lrx/k;)V
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lrx/a$7;->c:Lrx/j/c;

    invoke-virtual {v0, p1}, Lrx/j/c;->a(Lrx/k;)V

    .line 2016
    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 2003
    :try_start_0
    iget-object v0, p0, Lrx/a$7;->d:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    iget-object v0, p0, Lrx/a$7;->c:Lrx/j/c;

    invoke-virtual {v0}, Lrx/j/c;->unsubscribe()V

    .line 2011
    :goto_0
    return-void

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    :try_start_1
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 2006
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2007
    invoke-static {v1}, Lrx/a;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    iget-object v0, p0, Lrx/a$7;->c:Lrx/j/c;

    invoke-virtual {v0}, Lrx/j/c;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/a$7;->c:Lrx/j/c;

    invoke-virtual {v1}, Lrx/j/c;->unsubscribe()V

    throw v0
.end method
