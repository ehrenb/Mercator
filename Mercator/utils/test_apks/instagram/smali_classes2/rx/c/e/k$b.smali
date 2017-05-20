.class final Lrx/c/e/k$b;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/g;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lrx/c/e/k$b;->a:Lrx/g;

    .line 89
    iput-object p2, p0, Lrx/c/e/k$b;->b:Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lrx/c/e/k$b;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 96
    new-instance v1, Lrx/c/e/k$c;

    iget-object v2, p0, Lrx/c/e/k$b;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lrx/c/e/k$c;-><init>(Lrx/i;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/e/k$b;->a(Lrx/i;)V

    return-void
.end method
