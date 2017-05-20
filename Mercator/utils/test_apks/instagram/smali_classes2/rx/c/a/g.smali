.class public final Lrx/c/a/g;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/g$a;,
        Lrx/c/a/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/d",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lrx/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/i",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/b/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/d",
            "<+TT;>;>;",
            "Lrx/b/i",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    sget v4, Lrx/c/e/h;->b:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lrx/c/a/g;-><init>([Lrx/d;Ljava/lang/Iterable;Lrx/b/i;IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>([Lrx/d;Ljava/lang/Iterable;Lrx/b/i;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/d",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/d",
            "<+TT;>;>;",
            "Lrx/b/i",
            "<+TR;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/c/a/g;->a:[Lrx/d;

    .line 45
    iput-object p2, p0, Lrx/c/a/g;->b:Ljava/lang/Iterable;

    .line 46
    iput-object p3, p0, Lrx/c/a/g;->c:Lrx/b/i;

    .line 47
    iput p4, p0, Lrx/c/a/g;->d:I

    .line 48
    iput-boolean p5, p0, Lrx/c/a/g;->e:Z

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lrx/c/a/g;->a:[Lrx/d;

    .line 57
    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lrx/c/a/g;->b:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lrx/c/a/g;->b:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lrx/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/d;

    check-cast v0, [Lrx/d;

    .line 62
    array-length v3, v0

    move-object v6, v0

    .line 78
    :goto_0
    if-nez v3, :cond_3

    .line 79
    invoke-virtual {p1}, Lrx/j;->onCompleted()V

    .line 85
    :goto_1
    return-void

    .line 64
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/d;

    .line 65
    iget-object v1, p0, Lrx/c/a/g;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move-object v3, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d;

    .line 66
    array-length v4, v3

    if-ne v1, v4, :cond_4

    .line 67
    shr-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v1

    new-array v4, v4, [Lrx/d;

    .line 68
    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :goto_3
    add-int/lit8 v3, v1, 0x1

    aput-object v0, v4, v1

    move v1, v3

    move-object v3, v4

    .line 72
    goto :goto_2

    :cond_1
    move-object v6, v3

    move v3, v1

    goto :goto_0

    .line 75
    :cond_2
    array-length v3, v0

    move-object v6, v0

    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Lrx/c/a/g$b;

    iget-object v2, p0, Lrx/c/a/g;->c:Lrx/b/i;

    iget v4, p0, Lrx/c/a/g;->d:I

    iget-boolean v5, p0, Lrx/c/a/g;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/c/a/g$b;-><init>(Lrx/j;Lrx/b/i;IIZ)V

    .line 84
    invoke-virtual {v0, v6}, Lrx/c/a/g$b;->a([Lrx/d;)V

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_3
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/g;->a(Lrx/j;)V

    return-void
.end method
