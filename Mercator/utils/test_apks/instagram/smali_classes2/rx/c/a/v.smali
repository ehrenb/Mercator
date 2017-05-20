.class public Lrx/c/a/v;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lrx/h$a;


# annotations
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
.field private final a:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/c/a/v;->a:Lrx/d;

    .line 33
    return-void
.end method

.method public static a(Lrx/d;)Lrx/c/a/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<TT;>;)",
            "Lrx/c/a/v",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lrx/c/a/v;

    invoke-direct {v0, p0}, Lrx/c/a/v;-><init>(Lrx/d;)V

    return-object v0
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
    .line 37
    new-instance v0, Lrx/c/a/v$1;

    invoke-direct {v0, p0, p1}, Lrx/c/a/v$1;-><init>(Lrx/c/a/v;Lrx/i;)V

    .line 80
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 81
    iget-object v1, p0, Lrx/c/a/v;->a:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 82
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/a/v;->a(Lrx/i;)V

    return-void
.end method
