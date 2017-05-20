.class final Lrx/c/a/h$a;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final b:Lrx/c/a/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/h$c",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/c/a/h$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/c/a/h$c",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lrx/c/a/h$a;->a:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Lrx/c/a/h$a;->b:Lrx/c/a/h$c;

    .line 359
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5

    .prologue
    .line 363
    iget-boolean v0, p0, Lrx/c/a/h$a;->c:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/h$a;->c:Z

    .line 365
    iget-object v0, p0, Lrx/c/a/h$a;->b:Lrx/c/a/h$c;

    .line 366
    iget-object v1, p0, Lrx/c/a/h$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/c/a/h$c;->a(Ljava/lang/Object;)V

    .line 367
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/c/a/h$c;->b(J)V

    .line 369
    :cond_0
    return-void
.end method
