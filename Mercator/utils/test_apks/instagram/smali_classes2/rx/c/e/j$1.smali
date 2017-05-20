.class Lrx/c/e/j$1;
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
.field final synthetic a:Lrx/c/c/b;

.field final synthetic b:Lrx/c/e/j;


# direct methods
.method constructor <init>(Lrx/c/e/j;Lrx/c/c/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lrx/c/e/j$1;->b:Lrx/c/e/j;

    iput-object p2, p0, Lrx/c/e/j$1;->a:Lrx/c/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/k;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lrx/c/e/j$1;->a:Lrx/c/c/b;

    invoke-virtual {v0, p1}, Lrx/c/c/b;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lrx/b/a;

    invoke-virtual {p0, p1}, Lrx/c/e/j$1;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method
