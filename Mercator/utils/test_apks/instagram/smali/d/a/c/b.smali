.class public Ld/a/c/b;
.super Ljava/lang/Object;
.source "SimpleLoggerFactory.java"

# interfaces
.implements Ld/a/a;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ld/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld/a/c/b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    invoke-static {}, Ld/a/c/a;->d()V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ld/a/b;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Ld/a/c/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/b;

    .line 53
    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    new-instance v1, Ld/a/c/a;

    invoke-direct {v1, p1}, Ld/a/c/a;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Ld/a/c/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/b;

    .line 58
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
