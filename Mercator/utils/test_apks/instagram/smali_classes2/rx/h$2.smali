.class Lrx/h$2;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h;->a(Lrx/g;)Lrx/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/h;


# direct methods
.method constructor <init>(Lrx/h;Lrx/g;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lrx/h$2;->b:Lrx/h;

    iput-object p2, p0, Lrx/h$2;->a:Lrx/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1920
    iget-object v0, p0, Lrx/h$2;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 1921
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 1923
    new-instance v1, Lrx/h$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/h$2$1;-><init>(Lrx/h$2;Lrx/i;Lrx/g$a;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 1951
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1917
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/h$2;->a(Lrx/i;)V

    return-void
.end method
