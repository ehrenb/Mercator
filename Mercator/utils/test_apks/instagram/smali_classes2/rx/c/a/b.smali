.class public final Lrx/c/a/b;
.super Lrx/d;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/b$c;,
        Lrx/c/a/b$b;,
        Lrx/c/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/c/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/b$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/d$a;Lrx/c/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d$a",
            "<TT;>;",
            "Lrx/c/a/b$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lrx/d;-><init>(Lrx/d$a;)V

    .line 71
    iput-object p2, p0, Lrx/c/a/b;->b:Lrx/c/a/b$a;

    .line 72
    return-void
.end method

.method public static a(Lrx/d;I)Lrx/c/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;I)",
            "Lrx/c/a/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacityHint > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lrx/c/a/b$a;

    invoke-direct {v0, p0, p1}, Lrx/c/a/b$a;-><init>(Lrx/d;I)V

    .line 59
    new-instance v1, Lrx/c/a/b$b;

    invoke-direct {v1, v0}, Lrx/c/a/b$b;-><init>(Lrx/c/a/b$a;)V

    .line 60
    new-instance v2, Lrx/c/a/b;

    invoke-direct {v2, v1, v0}, Lrx/c/a/b;-><init>(Lrx/d$a;Lrx/c/a/b$a;)V

    return-object v2
.end method

.method public static h(Lrx/d;)Lrx/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/c/a/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lrx/c/a/b;->a(Lrx/d;I)Lrx/c/a/b;

    move-result-object v0

    return-object v0
.end method
