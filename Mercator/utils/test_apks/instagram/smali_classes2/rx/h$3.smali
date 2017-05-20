.class final Lrx/h$3;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h;->a(Lrx/h;)Lrx/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lrx/h;


# direct methods
.method constructor <init>(Lrx/h;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lrx/h$3;->a:Lrx/h;

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
    .line 666
    new-instance v0, Lrx/h$3$1;

    invoke-direct {v0, p0, p1}, Lrx/h$3$1;-><init>(Lrx/h$3;Lrx/i;)V

    .line 679
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 680
    iget-object v1, p0, Lrx/h$3;->a:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 681
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 662
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/h$3;->a(Lrx/i;)V

    return-void
.end method
