.class final Lrx/f/c$9;
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
        "Lrx/d;",
        "Lrx/d$a;",
        "Lrx/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;Lrx/d$a;)Lrx/d$a;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->c()Lrx/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/f/d;->onSubscribeStart(Lrx/d;Lrx/d$a;)Lrx/d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lrx/d;

    check-cast p2, Lrx/d$a;

    invoke-virtual {p0, p1, p2}, Lrx/f/c$9;->a(Lrx/d;Lrx/d$a;)Lrx/d$a;

    move-result-object v0

    return-object v0
.end method
