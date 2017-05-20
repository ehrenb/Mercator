.class public final Lrx/c/a/ag;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ag$c;,
        Lrx/c/a/ag$e;,
        Lrx/c/a/ag$d;,
        Lrx/c/a/ag$a;,
        Lrx/c/a/ag$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;",
        "Lrx/d",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean p1, p0, Lrx/c/a/ag;->a:Z

    .line 101
    iput p2, p0, Lrx/c/a/ag;->b:I

    .line 102
    return-void
.end method

.method public static a(Z)Lrx/c/a/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/c/a/ag",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    sget-object v0, Lrx/c/a/ag$a;->a:Lrx/c/a/ag;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/c/a/ag$b;->a:Lrx/c/a/ag;

    goto :goto_0
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
            "<",
            "Lrx/d",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lrx/c/a/ag$e;

    iget-boolean v1, p0, Lrx/c/a/ag;->a:Z

    iget v2, p0, Lrx/c/a/ag;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/c/a/ag$e;-><init>(Lrx/j;ZI)V

    .line 107
    new-instance v1, Lrx/c/a/ag$d;

    invoke-direct {v1, v0}, Lrx/c/a/ag$d;-><init>(Lrx/c/a/ag$e;)V

    .line 108
    iput-object v1, v0, Lrx/c/a/ag$e;->d:Lrx/c/a/ag$d;

    .line 110
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 111
    invoke-virtual {p1, v1}, Lrx/j;->setProducer(Lrx/f;)V

    .line 113
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ag;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
