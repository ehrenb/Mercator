.class Lrx/c/a/ar$1;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ar;->a(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/ar$a;

.field final synthetic b:Lrx/c/a/ar;


# direct methods
.method constructor <init>(Lrx/c/a/ar;Lrx/c/a/ar$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lrx/c/a/ar$1;->b:Lrx/c/a/ar;

    iput-object p2, p0, Lrx/c/a/ar$1;->a:Lrx/c/a/ar$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lrx/c/a/ar$1;->a:Lrx/c/a/ar$a;

    invoke-virtual {v0, p1, p2}, Lrx/c/a/ar$a;->a(J)V

    .line 44
    return-void
.end method
