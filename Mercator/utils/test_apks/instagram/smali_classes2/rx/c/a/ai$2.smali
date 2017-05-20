.class final Lrx/c/a/ai$2;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ai;->a(Lrx/d;)Lrx/c/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/e",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/d",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d;


# direct methods
.method constructor <init>(Lrx/d;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lrx/c/a/ai$2;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lrx/c/a/ai$2;->a:Lrx/d;

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lrx/c/a/ai$2;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
