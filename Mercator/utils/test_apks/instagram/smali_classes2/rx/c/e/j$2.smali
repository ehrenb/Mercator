.class Lrx/c/e/j$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/e/j;->d(Lrx/g;)Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/e",
        "<",
        "Lrx/b/a;",
        "Lrx/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/c/e/j;


# direct methods
.method constructor <init>(Lrx/c/e/j;Lrx/g;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lrx/c/e/j$2;->b:Lrx/c/e/j;

    iput-object p2, p0, Lrx/c/e/j$2;->a:Lrx/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lrx/c/e/j$2;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 110
    new-instance v1, Lrx/c/e/j$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/c/e/j$2$1;-><init>(Lrx/c/e/j$2;Lrx/b/a;Lrx/g$a;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 120
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lrx/b/a;

    invoke-virtual {p0, p1}, Lrx/c/e/j$2;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method
