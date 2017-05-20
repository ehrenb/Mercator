.class public Lio/realm/a/a;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/a/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/ag;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/realm/a/a$1;

    invoke-direct {v0, p0}, Lio/realm/a/a$1;-><init>(Lio/realm/a/a;)V

    iput-object v0, p0, Lio/realm/a/a;->a:Ljava/lang/ThreadLocal;

    .line 57
    new-instance v0, Lio/realm/a/a$2;

    invoke-direct {v0, p0}, Lio/realm/a/a$2;-><init>(Lio/realm/a/a;)V

    iput-object v0, p0, Lio/realm/a/a;->b:Ljava/lang/ThreadLocal;

    .line 308
    return-void
.end method


# virtual methods
.method public a(Lio/realm/e;Lio/realm/ag;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/e;",
            "Lio/realm/ag",
            "<",
            "Lio/realm/f;",
            ">;)",
            "Lrx/d",
            "<",
            "Lio/realm/ag",
            "<",
            "Lio/realm/f;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lio/realm/e;->i()Lio/realm/x;

    move-result-object v0

    .line 167
    new-instance v1, Lio/realm/a/a$4;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$4;-><init>(Lio/realm/a/a;Lio/realm/x;Lio/realm/ag;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/e;Lio/realm/f;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/e;",
            "Lio/realm/f;",
            ")",
            "Lrx/d",
            "<",
            "Lio/realm/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Lio/realm/e;->i()Lio/realm/x;

    move-result-object v0

    .line 253
    new-instance v1, Lio/realm/a/a$6;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$6;-><init>(Lio/realm/a/a;Lio/realm/x;Lio/realm/f;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/u;Lio/realm/ac;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/u;",
            "TE;)",
            "Lrx/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p1}, Lio/realm/u;->i()Lio/realm/x;

    move-result-object v0

    .line 217
    new-instance v1, Lio/realm/a/a$5;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$5;-><init>(Lio/realm/a/a;Lio/realm/x;Lio/realm/ac;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/u;Lio/realm/ag;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/u;",
            "Lio/realm/ag",
            "<TE;>;)",
            "Lrx/d",
            "<",
            "Lio/realm/ag",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Lio/realm/u;->i()Lio/realm/x;

    move-result-object v0

    .line 131
    new-instance v1, Lio/realm/a/a$3;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$3;-><init>(Lio/realm/a/a;Lio/realm/x;Lio/realm/ag;)V

    invoke-static {v1}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 298
    instance-of v0, p1, Lio/realm/a/a;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0x25

    return v0
.end method
