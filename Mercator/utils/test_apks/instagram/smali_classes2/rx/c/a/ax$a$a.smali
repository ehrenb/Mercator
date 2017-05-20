.class final Lrx/c/a/ax$a$a;
.super Lrx/j;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ax$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/c/e/h;

.field final synthetic b:Lrx/c/a/ax$a;


# direct methods
.method constructor <init>(Lrx/c/a/ax$a;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lrx/c/a/ax$a$a;->b:Lrx/c/a/ax$a;

    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 293
    invoke-static {}, Lrx/c/e/h;->b()Lrx/c/e/h;

    move-result-object v0

    iput-object v0, p0, Lrx/c/a/ax$a$a;->a:Lrx/c/e/h;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lrx/c/a/ax$a$a;->request(J)V

    .line 302
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lrx/c/a/ax$a$a;->a:Lrx/c/e/h;

    invoke-virtual {v0}, Lrx/c/e/h;->d()V

    .line 307
    iget-object v0, p0, Lrx/c/a/ax$a$a;->b:Lrx/c/a/ax$a;

    invoke-virtual {v0}, Lrx/c/a/ax$a;->a()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lrx/c/a/ax$a$a;->b:Lrx/c/a/ax$a;

    iget-object v0, v0, Lrx/c/a/ax$a;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lrx/c/a/ax$a$a;->a:Lrx/c/e/h;

    invoke-virtual {v0, p1}, Lrx/c/e/h;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v0, p0, Lrx/c/a/ax$a$a;->b:Lrx/c/a/ax$a;

    invoke-virtual {v0}, Lrx/c/a/ax$a;->a()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {p0, v0}, Lrx/c/a/ax$a$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 297
    sget v0, Lrx/c/e/h;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/ax$a$a;->request(J)V

    .line 298
    return-void
.end method
