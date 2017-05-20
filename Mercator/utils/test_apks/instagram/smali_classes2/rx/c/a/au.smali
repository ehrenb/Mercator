.class public final Lrx/c/a/au;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lrx/c/a/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/a/au",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lrx/c/a/au$a;->a:Lrx/c/a/au;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/c/b/b;

    invoke-direct {v0, p1}, Lrx/c/b/b;-><init>(Lrx/j;)V

    .line 61
    new-instance v1, Lrx/c/a/au$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/c/a/au$1;-><init>(Lrx/c/a/au;Lrx/c/b/b;Lrx/j;)V

    .line 115
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 116
    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 117
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/au;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
