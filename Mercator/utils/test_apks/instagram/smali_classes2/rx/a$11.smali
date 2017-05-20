.class Lrx/a$11;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->b()Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;)V
    .locals 0

    .prologue
    .line 2252
    iput-object p1, p0, Lrx/a$11;->a:Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2255
    iget-object v0, p0, Lrx/a$11;->a:Lrx/a;

    invoke-virtual {v0, p1}, Lrx/a;->a(Lrx/j;)V

    .line 2256
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2252
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/a$11;->a(Lrx/j;)V

    return-void
.end method
