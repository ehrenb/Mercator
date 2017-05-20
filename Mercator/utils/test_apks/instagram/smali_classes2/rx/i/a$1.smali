.class final Lrx/i/a$1;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i/a;->a(Ljava/lang/Object;Z)Lrx/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b",
        "<",
        "Lrx/i/d$b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/d;


# direct methods
.method constructor <init>(Lrx/i/d;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lrx/i/a$1;->a:Lrx/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/i/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lrx/i/a$1;->a:Lrx/i/d;

    invoke-virtual {v0}, Lrx/i/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i/d$b;->b(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lrx/i/d$b;

    invoke-virtual {p0, p1}, Lrx/i/a$1;->a(Lrx/i/d$b;)V

    return-void
.end method
