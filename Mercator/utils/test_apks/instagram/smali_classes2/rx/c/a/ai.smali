.class public final Lrx/c/a/ai;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/d",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/e",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/d",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/c/a/ai;->a:Lrx/b/e;

    .line 81
    return-void
.end method

.method public static a(Lrx/b/e;)Lrx/c/a/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/c/a/ai",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lrx/c/a/ai;

    new-instance v1, Lrx/c/a/ai$1;

    invoke-direct {v1, p0}, Lrx/c/a/ai$1;-><init>(Lrx/b/e;)V

    invoke-direct {v0, v1}, Lrx/c/a/ai;-><init>(Lrx/b/e;)V

    return-object v0
.end method

.method public static a(Lrx/d;)Lrx/c/a/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;)",
            "Lrx/c/a/ai",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lrx/c/a/ai;

    new-instance v1, Lrx/c/a/ai$2;

    invoke-direct {v1, p0}, Lrx/c/a/ai$2;-><init>(Lrx/d;)V

    invoke-direct {v0, v1}, Lrx/c/a/ai;-><init>(Lrx/b/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lrx/c/b/a;

    invoke-direct {v0}, Lrx/c/b/a;-><init>()V

    .line 87
    new-instance v1, Lrx/j/d;

    invoke-direct {v1}, Lrx/j/d;-><init>()V

    .line 89
    new-instance v2, Lrx/c/a/ai$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/c/a/ai$3;-><init>(Lrx/c/a/ai;Lrx/j;Lrx/c/b/a;Lrx/j/d;)V

    .line 163
    invoke-virtual {v1, v2}, Lrx/j/d;->a(Lrx/k;)V

    .line 165
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 166
    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 168
    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ai;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
