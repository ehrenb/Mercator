.class final Lrx/f/c$11;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/f/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Lrx/h;",
        "Lrx/h$a;",
        "Lrx/h$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/h;Lrx/h$a;)Lrx/h$a;
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->d()Lrx/f/h;

    move-result-object v1

    .line 129
    invoke-static {}, Lrx/f/i;->a()Lrx/f/h;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 133
    :goto_0
    return-object p2

    :cond_0
    new-instance v0, Lrx/c/a/ba;

    new-instance v2, Lrx/c/a/bf;

    invoke-direct {v2, p2}, Lrx/c/a/bf;-><init>(Lrx/h$a;)V

    invoke-virtual {v1, p1, v2}, Lrx/f/h;->a(Lrx/h;Lrx/d$a;)Lrx/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/c/a/ba;-><init>(Lrx/d$a;)V

    move-object p2, v0

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lrx/h;

    check-cast p2, Lrx/h$a;

    invoke-virtual {p0, p1, p2}, Lrx/f/c$11;->a(Lrx/h;Lrx/h$a;)Lrx/h$a;

    move-result-object v0

    return-object v0
.end method
