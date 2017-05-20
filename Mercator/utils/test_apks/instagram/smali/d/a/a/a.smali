.class public Ld/a/a/a;
.super Ljava/lang/Object;
.source "EventRecodingLogger.java"

# interfaces
.implements Ld/a/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ld/a/b/g;

.field c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ld/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a/b/g;Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b/g;",
            "Ljava/util/Queue",
            "<",
            "Ld/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ld/a/a/a;->b:Ld/a/b/g;

    .line 17
    invoke-virtual {p1}, Ld/a/b/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/a/a/a;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Ld/a/a/a;->c:Ljava/util/Queue;

    .line 19
    return-void
.end method

.method private a(Ld/a/a/b;Ld/a/d;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ld/a/a/d;

    invoke-direct {v0}, Ld/a/a/d;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ld/a/a/d;->a(J)V

    .line 33
    invoke-virtual {v0, p1}, Ld/a/a/d;->a(Ld/a/a/b;)V

    .line 34
    iget-object v1, p0, Ld/a/a/a;->b:Ld/a/b/g;

    invoke-virtual {v0, v1}, Ld/a/a/d;->a(Ld/a/b/g;)V

    .line 35
    iget-object v1, p0, Ld/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/a/a/d;->a(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p3}, Ld/a/a/d;->b(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p4}, Ld/a/a/d;->a([Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0, p5}, Ld/a/a/d;->a(Ljava/lang/Throwable;)V

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/a/a/d;->c(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Ld/a/a/a;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method private a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 26
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ld/a/a/a;->a(Ld/a/a/b;Ld/a/d;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-object v0, Ld/a/a/b;->e:Ld/a/a/b;

    invoke-direct {p0, v0, p1, v1, v1}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 108
    sget-object v0, Ld/a/a/b;->d:Ld/a/a/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Ld/a/a/b;->d:Ld/a/a/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sget-object v0, Ld/a/a/b;->e:Ld/a/a/b;

    invoke-direct {p0, v0, p1, v1, v1}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Ld/a/a/b;->c:Ld/a/a/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    sget-object v0, Ld/a/a/b;->b:Ld/a/a/b;

    invoke-direct {p0, v0, p1, v1, v1}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Ld/a/a/b;->b:Ld/a/a/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Ld/a/a/a;->a(Ld/a/a/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method
