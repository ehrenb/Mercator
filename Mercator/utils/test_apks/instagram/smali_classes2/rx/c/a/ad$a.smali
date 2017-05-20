.class final Lrx/c/a/ad$a;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lrx/c/a/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ad",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lrx/c/a/ad;

    invoke-static {}, Lrx/c/e/m;->b()Lrx/b/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/c/a/ad;-><init>(Lrx/b/e;)V

    sput-object v0, Lrx/c/a/ad$a;->a:Lrx/c/a/ad;

    return-void
.end method
