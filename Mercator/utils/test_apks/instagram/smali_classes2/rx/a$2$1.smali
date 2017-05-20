.class Lrx/a$2$1;
.super Lrx/j;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$2;->a(Lrx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/b;

.field final synthetic b:Lrx/a$2;


# direct methods
.method constructor <init>(Lrx/a$2;Lrx/b;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lrx/a$2$1;->b:Lrx/a$2;

    iput-object p2, p0, Lrx/a$2$1;->a:Lrx/b;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lrx/a$2$1;->a:Lrx/b;

    invoke-interface {v0}, Lrx/b;->a()V

    .line 578
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lrx/a$2$1;->a:Lrx/b;

    invoke-interface {v0, p1}, Lrx/b;->a(Ljava/lang/Throwable;)V

    .line 583
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 588
    return-void
.end method
