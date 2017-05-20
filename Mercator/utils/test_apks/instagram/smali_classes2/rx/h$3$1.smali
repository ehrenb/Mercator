.class Lrx/h$3$1;
.super Lrx/i;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h$3;->a(Lrx/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lrx/h",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/h$3;


# direct methods
.method constructor <init>(Lrx/h$3;Lrx/i;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lrx/h$3$1;->b:Lrx/h$3;

    iput-object p2, p0, Lrx/h$3$1;->a:Lrx/i;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 666
    check-cast p1, Lrx/h;

    invoke-virtual {p0, p1}, Lrx/h$3$1;->a(Lrx/h;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lrx/h$3$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 676
    return-void
.end method

.method public a(Lrx/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lrx/h$3$1;->a:Lrx/i;

    invoke-virtual {p1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 671
    return-void
.end method
