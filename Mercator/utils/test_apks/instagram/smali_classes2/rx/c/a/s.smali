.class public final Lrx/c/a/s;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/c/a/s;->a:I

    .line 33
    iput p2, p0, Lrx/c/a/s;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lrx/c/a/s$a;

    iget v1, p0, Lrx/c/a/s;->a:I

    iget v2, p0, Lrx/c/a/s;->b:I

    invoke-direct {v0, p1, v1, v2}, Lrx/c/a/s$a;-><init>(Lrx/j;II)V

    invoke-virtual {p1, v0}, Lrx/j;->setProducer(Lrx/f;)V

    .line 39
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/s;->a(Lrx/j;)V

    return-void
.end method
